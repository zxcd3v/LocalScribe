// Runs the same version of sherpa-onnx on Linux. Does not test Android lifecycle.
#include "sherpa-onnx/c-api/c-api.h"
#include <algorithm>
#include <cassert>
#include <cmath>
#include <iostream>
#include <vector>
#include <string>
static std::vector<float> embed(const SherpaOnnxSpeakerEmbeddingExtractor* e,
                                const SherpaOnnxWave* w,int start,int count) {
  auto s=SherpaOnnxSpeakerEmbeddingExtractorCreateStream(e); assert(s);
  SherpaOnnxOnlineStreamAcceptWaveform(s,w->sample_rate,w->samples+start,count);
  SherpaOnnxOnlineStreamInputFinished(s);
  assert(SherpaOnnxSpeakerEmbeddingExtractorIsReady(e,s));
  auto p=SherpaOnnxSpeakerEmbeddingExtractorComputeEmbedding(e,s); assert(p);
  int d=SherpaOnnxSpeakerEmbeddingExtractorDim(e);
  std::vector<float> v(p,p+d);
  for(float x:v) assert(std::isfinite(x));
  SherpaOnnxSpeakerEmbeddingExtractorDestroyEmbedding(p);
  SherpaOnnxDestroyOnlineStream(s);return v;
}
static double cosine(const std::vector<float>& a,const std::vector<float>& b) {
 double ab=0,aa=0,bb=0;assert(a.size()==b.size());
 for(size_t i=0;i<a.size();++i){ab+=a[i]*b[i];aa+=a[i]*a[i];bb+=b[i]*b[i];}
 return ab/std::sqrt(aa*bb);
}
int main(int argc,char**argv) {
 assert(argc==5);
 SherpaOnnxSpeakerEmbeddingExtractorConfig ec{};
 ec.model=argv[1];ec.num_threads=2;ec.provider="cpu";
 auto e=SherpaOnnxCreateSpeakerEmbeddingExtractor(&ec);assert(e);
 auto a=SherpaOnnxReadWave(argv[3]);auto b=SherpaOnnxReadWave(argv[4]);assert(a&&b);
 auto ea=embed(e,a,0,a->num_samples);auto ea2=embed(e,a,0,a->num_samples);auto eb=embed(e,b,0,b->num_samples);
 assert(cosine(ea,ea2)>0.999);
 std::cout<<"embedding_dim="<<ea.size()<<" identical="<<cosine(ea,ea2)<<" different_fixture="<<cosine(ea,eb)<<"\n";
 auto a1=embed(e,a,0,std::min(a->num_samples,a->sample_rate*3));
 auto a2=embed(e,a,std::min(a->num_samples/2,a->num_samples-a->sample_rate),std::min(a->num_samples-a->num_samples/2,a->sample_rate*3));
 std::cout<<"same_fixture_different_crops="<<cosine(a1,a2)<<"\n";
 SherpaOnnxVadModelConfig vc{};
 vc.silero_vad.model=argv[2];vc.silero_vad.threshold=0.5;vc.silero_vad.min_silence_duration=0.35;vc.silero_vad.min_speech_duration=0.15;vc.silero_vad.window_size=512;vc.silero_vad.max_speech_duration=15;
 vc.sample_rate=16000;vc.num_threads=1;vc.provider="cpu";
 auto v=SherpaOnnxCreateVoiceActivityDetector(&vc,30);assert(v);assert(a->sample_rate==16000);
 int segments=0;
 auto drain=[&](){while(!SherpaOnnxVoiceActivityDetectorEmpty(v)){auto s=SherpaOnnxVoiceActivityDetectorFront(v);assert(s->start>=0&&s->n>0);++segments;SherpaOnnxDestroySpeechSegment(s);SherpaOnnxVoiceActivityDetectorPop(v);}};
 for(int p=0;p<a->num_samples;p+=512){SherpaOnnxVoiceActivityDetectorAcceptWaveform(v,a->samples+p,std::min(512,a->num_samples-p));drain();}
 SherpaOnnxVoiceActivityDetectorFlush(v);drain();assert(segments>0);
 std::cout<<"speech_vad_segments="<<segments<<"\n";
 SherpaOnnxVoiceActivityDetectorReset(v);segments=0;std::vector<float> silence(512,0);
 // Five minutes tests streaming state and repeated consumption without storing audio.
 for(int i=0;i<16000*300/512;++i){SherpaOnnxVoiceActivityDetectorAcceptWaveform(v,silence.data(),512);drain();}
 SherpaOnnxVoiceActivityDetectorFlush(v);drain();assert(segments==0);
 std::cout<<"silence_300_seconds_segments="<<segments<<"\nPASS\n";
 SherpaOnnxDestroyVoiceActivityDetector(v);SherpaOnnxDestroySpeakerEmbeddingExtractor(e);SherpaOnnxFreeWave(a);SherpaOnnxFreeWave(b);
}
