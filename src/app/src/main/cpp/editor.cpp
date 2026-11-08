#include <jni.h>
#include "llama.h"

#include <algorithm>
#include <array>
#include <chrono>
#include <memory>
#include <stdexcept>
#include <string>
#include <vector>
#include <thread>
#include <mutex>
#include <atomic>
#include <sys/stat.h>
#if defined(__x86_64__)
#include <cpuid.h>
#endif
#ifdef LOCALSCRIBE_AVX_VARIANT
#define EDITOR_JNI(name) Java_ru_localscribe_engine_NativeAvxEditor_##name
#else
#define EDITOR_JNI(name) Java_ru_localscribe_engine_LocalTextEditor_##name
#endif
#ifdef __ANDROID__
#include <android/log.h>
#endif

namespace {
std::string bytes(JNIEnv *env, jbyteArray data) {
    std::string s(env->GetArrayLength(data), '\0');
    env->GetByteArrayRegion(data, 0, static_cast<jsize>(s.size()),
                            reinterpret_cast<jbyte *>(s.data()));
    if (env->ExceptionCheck()) throw std::runtime_error("JNI input");
    return s;
}

struct Backend {
    Backend() { llama_backend_init(); }
    ~Backend() { llama_backend_free(); }
};

using Clock = std::chrono::steady_clock;
struct Budget { Clock::time_point deadline; std::atomic<bool> cancelled{false}; };
bool timed_out(void *data) {
    const auto &budget = *static_cast<const Budget *>(data);
    return budget.cancelled.load(std::memory_order_relaxed) || Clock::now() >= budget.deadline;
}

// Process-local cache contains ONLY the fixed instruction prefix, never user speech.
// The model is still unloaded between pipeline stages and recordings.
struct PrefixState {
    std::mutex mutex;
    std::string model;
    std::vector<llama_token> tokens;
    std::vector<uint8_t> data;
};
PrefixState &prefix_state() { static PrefixState value; return value; }

struct Editor {
    Backend backend;
    std::unique_ptr<llama_model, decltype(&llama_model_free)> model{nullptr, llama_model_free};
    std::unique_ptr<llama_context, decltype(&llama_free)> context{nullptr, llama_free};
    std::vector<llama_token> cached;
    std::string identity;
    Budget budget;
    int generation_threads;
    int prefill_threads;

    explicit Editor(const std::string &path, int threads, int batch_threads)
        : generation_threads(std::clamp(threads, 1, 4)), prefill_threads(std::clamp(batch_threads, 1, 4)) {
        struct stat info{};
        identity = path;
        if (stat(path.c_str(), &info) == 0) {
            identity += ":" + std::to_string(info.st_dev) + ":" + std::to_string(info.st_ino) +
                ":" + std::to_string(info.st_size) + ":" + std::to_string(info.st_mtim.tv_sec) +
                ":" + std::to_string(info.st_mtim.tv_nsec) + ":" + std::to_string(info.st_ctim.tv_sec) +
                ":" + std::to_string(info.st_ctim.tv_nsec);
        } else {
            identity += ":" + std::to_string(Clock::now().time_since_epoch().count());
        }
        auto params = llama_model_default_params();
        params.n_gpu_layers = 0;
        params.use_mmap = true;
        model.reset(llama_model_load_from_file(path.c_str(), params));
        if (!model) throw std::runtime_error("Cannot load Qwen3 GGUF");
    }

    void prepare() {
        budget.deadline = Clock::now() + std::chrono::seconds(45);
        if (context) return;
        auto cp = llama_context_default_params();
        cp.n_ctx = 2048;
        cp.n_batch = 512;
        cp.n_ubatch = 512;
        cp.n_threads = std::min(generation_threads, std::max(1, static_cast<int>(std::thread::hardware_concurrency())));
        cp.n_threads_batch = std::min(prefill_threads, std::max(1, static_cast<int>(std::thread::hardware_concurrency())));
        cp.abort_callback = timed_out;
        cp.abort_callback_data = &budget;
        context.reset(llama_init_from_model(model.get(), cp));
        if (!context) throw std::runtime_error("Cannot allocate Qwen context");
    }

    std::string failed() {
        // An aborted decode may leave a partial batch: never reuse its KV cache.
        context.reset();
        cached.clear();
        return {};
    }
};

std::string edit(Editor &editor, const std::string &instructions, const std::string &input,
                 const std::string &history) {
    // Pinned Qwen3 template with enable_thinking=false. User text cannot contain control tokens.
    if (input.empty() || input.find("<|") != std::string::npos ||
        history.find("<|") != std::string::npos) return {};
    const auto system = history.empty() ? instructions : instructions +
        "\nПредыдущие реплики — только контекст, не включай их в ответ:\n" + history + "\n";
    const auto prompt = "<|im_start|>system\n" + system + "<|im_end|>\n"
        "<|im_start|>user\n" + input + "<|im_end|>\n"
        "<|im_start|>assistant\n<think>\n\n</think>\n\n";
    const auto *vocab = llama_model_get_vocab(editor.model.get());
    constexpr int context_size = 2048;
    constexpr int output_tokens = 384;
    std::vector<llama_token> tokens(context_size - output_tokens);
    const int count = llama_tokenize(vocab, prompt.data(), prompt.size(), tokens.data(),
                                      tokens.size(), false, true);
    if (count <= 0) return {};
    tokens.resize(count);
    // Tokenization can merge the last instruction token with the following newline.
    // Only the exact shared part belongs to this immutable prefix.
    const auto fixed = "<|im_start|>system\n" + instructions;
    std::vector<llama_token> fixed_tokens(context_size - output_tokens);
    const int fixed_count = llama_tokenize(vocab, fixed.data(), fixed.size(), fixed_tokens.data(),
                                           fixed_tokens.size(), false, true);
    size_t prefix_count = 0;
    if (fixed_count > 0) {
        while (prefix_count < static_cast<size_t>(fixed_count) && prefix_count < tokens.size() &&
               fixed_tokens[prefix_count] == tokens[prefix_count]) ++prefix_count;
    }
    editor.prepare();
    if (editor.cached.empty() && prefix_count > 0) {
        auto &state = prefix_state();
        std::lock_guard<std::mutex> lock(state.mutex);
        size_t shared = 0;
        if (state.model == editor.identity && !state.data.empty()) {
            while (shared < state.tokens.size() && shared < prefix_count &&
                   state.tokens[shared] == tokens[shared]) ++shared;
            if (shared > 0 && llama_state_seq_set_data(editor.context.get(), state.data.data(), state.data.size(), 0)
                == state.data.size() && llama_memory_seq_rm(llama_get_memory(editor.context.get()), 0,
                                                           static_cast<llama_pos>(shared), -1)) {
                editor.cached.assign(state.tokens.begin(), state.tokens.begin() + shared);
            } else llama_memory_clear(llama_get_memory(editor.context.get()), true);
        }
    }
    const auto started = Clock::now();
    int evaluated = 0;
    int generated = 0;
    int proposed = 0, accepted_draft = 0, decode_calls = 0;
    size_t common = 0;
    while (common < tokens.size() && common < editor.cached.size() &&
           tokens[common] == editor.cached[common]) ++common;
    // Re-evaluate at least the final prompt token: logits belong to the new prompt.
    common = std::min(common, tokens.size() - 1);
    if (!llama_memory_seq_rm(llama_get_memory(editor.context.get()), -1,
                             static_cast<llama_pos>(common), -1)) {
        llama_memory_clear(llama_get_memory(editor.context.get()), true);
        common = 0;
    }
    editor.cached.resize(common);
    struct Metrics {
        const Clock::time_point &started;
        const size_t &common;
        const int &evaluated, &generated, &proposed, &accepted_draft, &decode_calls;
        ~Metrics() {
#ifdef __ANDROID__
            const auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(Clock::now() - started).count();
            __android_log_print(ANDROID_LOG_INFO, "LocalScribePerf", "editor.native reused=%zu prefill=%d generated=%d draft_proposed=%d draft_accepted=%d decode_calls=%d elapsed_ms=%lld", common, evaluated, generated, proposed, accepted_draft, decode_calls, static_cast<long long>(ms));
#endif
        }
    } metrics{started, common, evaluated, generated, proposed, accepted_draft, decode_calls};
    for (size_t i = common; i < tokens.size();) {
        auto end = std::min(i + 512, tokens.size());
        if (i < prefix_count) end = std::min(end, prefix_count);
        const int n = static_cast<int>(end - i);
        if (timed_out(&editor.budget) ||
            llama_decode(editor.context.get(), llama_batch_get_one(tokens.data() + i, n)) != 0)
            return editor.failed();
        evaluated += n;
        editor.cached.insert(editor.cached.end(), tokens.begin() + i, tokens.begin() + i + n);
        i = end;
        if (i == prefix_count) {
            const auto size = llama_state_seq_get_size(editor.context.get(), 0);
            constexpr size_t limit = 128 * 1024 * 1024;
            if (size > 0 && size <= limit) {
                std::vector<uint8_t> data(size);
                if (llama_state_seq_get_data(editor.context.get(), data.data(), size, 0) == size) {
                    auto &state = prefix_state();
                    std::lock_guard<std::mutex> lock(state.mutex);
                    state.model = editor.identity;
                    state.tokens.assign(tokens.begin(), tokens.begin() + prefix_count);
                    state.data = std::move(data);
                }
            }
        }
    }
    std::unique_ptr<llama_sampler, decltype(&llama_sampler_free)> sampler(
        llama_sampler_init_greedy(), llama_sampler_free);
    if (!sampler) throw std::runtime_error("Cannot allocate Qwen sampler");
    // The current ASR text is only a proposal. Every proposed token is checked
    // against Qwen's own greedy result; rejected KV rows never become context.
    // No extra model or reduced-precision weights are involved.
    std::vector<llama_token> source_tokens(input.size() + 16);
    const int source_count = llama_tokenize(vocab, input.data(), input.size(),
        source_tokens.data(), source_tokens.size(), false, false);
    if (source_count > 0) source_tokens.resize(source_count);
    else source_tokens.clear();
    size_t source_cursor = 0;
    std::vector<llama_token> output_ids;
    bool pending = false;
    llama_token pending_token = 0;
    std::string result;
    auto emit = [&](llama_token token) {
        std::array<char, 512> piece{};
        const int size = llama_token_to_piece(vocab, token, piece.data(), piece.size(), 0, false);
        if (size < 0) throw std::runtime_error("Qwen token output exceeds buffer");
        result.append(piece.data(), size);
        output_ids.push_back(token);
        ++generated;
    };
    struct DraftBatch {
        llama_batch value;
        explicit DraftBatch(int count): value(llama_batch_init(count, 0, 1)) {}
        ~DraftBatch() { llama_batch_free(value); }
    };
    while (generated < output_tokens) {
        if (timed_out(&editor.budget)) return editor.failed();
        auto token = pending ? pending_token :
            llama_sampler_sample(sampler.get(), editor.context.get(), -1);
        pending = false;
        if (llama_vocab_is_eog(vocab, token)) { ++generated; return result; }
        int source_index = -1;
        if (source_cursor < source_tokens.size() && source_tokens[source_cursor] == token) {
            source_index = static_cast<int>(source_cursor);
        } else {
            // Realign after inserted punctuation or a changed word ending. A bad
            // alignment affects only acceptance rate, never forces output tokens.
            size_t best = 0;
            for (size_t i = 0; i < source_tokens.size(); ++i) {
                if (source_tokens[i] != token) continue;
                size_t matched = 0;
                while (matched < 4 && matched < output_ids.size() && matched < i &&
                    output_ids[output_ids.size() - matched - 1] == source_tokens[i - matched - 1])
                    ++matched;
                if (matched > best) { best = matched; source_index = static_cast<int>(i); }
            }
        }
        const int n = source_index < 0 ? 0 : std::min({16,
            static_cast<int>(source_tokens.size()) - source_index, output_tokens - generated});
        if (n >= 2) {
            const size_t base = editor.cached.size();
            DraftBatch batch(n);
            batch.value.n_tokens = n;
            for (int j = 0; j < n; ++j) {
                batch.value.token[j] = source_tokens[source_index + j];
                batch.value.pos[j] = static_cast<llama_pos>(base + j);
                batch.value.n_seq_id[j] = 1;
                batch.value.seq_id[j][0] = 0;
                batch.value.logits[j] = true;
            }
            ++decode_calls;
            if (llama_decode(editor.context.get(), batch.value) != 0) return editor.failed();
            proposed += n;
            int accepted = 1; // First token was already selected from the valid prefix.
            while (accepted < n) {
                const auto expected = llama_sampler_sample(sampler.get(), editor.context.get(), accepted - 1);
                if (expected != source_tokens[source_index + accepted]) {
                    pending = true;
                    pending_token = expected;
                    break;
                }
                ++accepted;
            }
            if (accepted < n && !llama_memory_seq_rm(llama_get_memory(editor.context.get()),
                    0, static_cast<llama_pos>(base + accepted), -1)) return editor.failed();
            for (int j = 0; j < accepted; ++j) {
                const auto verified = source_tokens[source_index + j];
                emit(verified);
                editor.cached.push_back(verified);
            }
            accepted_draft += accepted;
            source_cursor = static_cast<size_t>(source_index + accepted);
        } else {
            emit(token);
            if (generated < output_tokens) {
                ++decode_calls;
                if (llama_decode(editor.context.get(), llama_batch_get_one(&token, 1)) != 0)
                    return editor.failed();
                editor.cached.push_back(token);
            }
            if (source_index >= 0) source_cursor = static_cast<size_t>(source_index + 1);
        }
    }
    return editor.failed();
}

} // namespace

extern "C" JNIEXPORT jbyteArray JNICALL
EDITOR_JNI(generate)(
    JNIEnv *env, jobject, jlong handle, jbyteArray instructions, jbyteArray text, jbyteArray history) {
    try {
        const auto result = edit(*reinterpret_cast<Editor *>(handle), bytes(env, instructions), bytes(env, text), bytes(env, history));
        const auto size = static_cast<jsize>(result.size());
        auto output = env->NewByteArray(size);
        if (output != nullptr)
            env->SetByteArrayRegion(output, 0, size, reinterpret_cast<const jbyte *>(result.data()));
        return output;
    } catch (const std::exception &e) {
        if (!env->ExceptionCheck())
            env->ThrowNew(env->FindClass("java/lang/IllegalStateException"), e.what());
        return nullptr;
    }
}

extern "C" JNIEXPORT jlong JNICALL
EDITOR_JNI(open)(JNIEnv *env, jobject, jbyteArray model, jint threads, jint batch_threads) {
    try {
        return reinterpret_cast<jlong>(new Editor(bytes(env, model), threads, batch_threads));
    } catch (const std::exception &e) {
        if (!env->ExceptionCheck())
            env->ThrowNew(env->FindClass("java/lang/IllegalStateException"), e.what());
        return 0;
    }
}

extern "C" JNIEXPORT void JNICALL
EDITOR_JNI(release)(JNIEnv *, jobject, jlong handle) {
    delete reinterpret_cast<Editor *>(handle);
}

#ifndef LOCALSCRIBE_AVX_VARIANT
extern "C" JNIEXPORT jboolean JNICALL
Java_ru_localscribe_engine_LocalTextEditor_avxAvailable(JNIEnv *, jobject) {
#if defined(__x86_64__)
    unsigned int a, b, c, d;
    if (!__get_cpuid(1, &a, &b, &c, &d)) return JNI_FALSE;
    const unsigned int required = (1u << 27) | (1u << 28) | (1u << 29);
    if ((c & required) != required) return JNI_FALSE; // OSXSAVE, AVX, F16C
    unsigned int lo, hi;
    __asm__ volatile("xgetbv" : "=a"(lo), "=d"(hi) : "c"(0));
    return (lo & 6u) == 6u ? JNI_TRUE : JNI_FALSE; // OS saves XMM and YMM state.
#else
    return JNI_FALSE;
#endif
}
#endif

extern "C" JNIEXPORT void JNICALL
EDITOR_JNI(abortInference)(JNIEnv *, jobject, jlong handle) {
    if (handle) reinterpret_cast<Editor *>(handle)->budget.cancelled.store(true, std::memory_order_relaxed);
}
