use std::cell::RefCell;
use std::ffi::{CStr, CString, c_char};
use std::panic::{AssertUnwindSafe, catch_unwind};
use std::sync::OnceLock;
use parakeet_rs::{ExecutionConfig, sortformer::{Sortformer, DiarizationConfig, StreamingProfile}};
use speakrs::{OwnedDiarizationPipeline, ExecutionMode};
use speakrs::pipeline::InferenceArtifacts;

thread_local! {
    static LAST_ERROR: RefCell<CString> = RefCell::new(CString::new("").unwrap());
}

enum Engine {
    Primary(Sortformer),
    Secondary {
        workers: Vec<OwnedDiarizationPipeline>,
        pending: Vec<Vec<f32>>,
        windows: Vec<InferenceArtifacts>,
        step: f64,
    },
}

// Immutable model weights are shared; four bounded windows have private reusable scratch.
// Join every worker and preserve input order before global clustering.
fn flush_secondary(workers: &mut [OwnedDiarizationPipeline], pending: &mut Vec<Vec<f32>>,
                   windows: &mut Vec<InferenceArtifacts>) -> Result<(), String> {
    if pending.is_empty() { return Ok(()); }
    let results = std::thread::scope(|scope| {
        let handles: Vec<_> = workers.iter_mut().zip(pending.iter()).map(|(pipeline,audio)|
            scope.spawn(move || pipeline.run_inference_only(audio).map_err(|e|e.to_string()))
        ).collect();
        handles.into_iter().map(|handle|
            handle.join().unwrap_or_else(|_| Err("VBx worker panic".into()))
        ).collect::<Vec<_>>()
    });
    pending.clear();
    for result in results { windows.push(result?); }
    Ok(())
}

fn attempt<T>(fallback: T, work: impl FnOnce() -> Result<T, String>) -> T {
    match catch_unwind(AssertUnwindSafe(work)) {
        Ok(Ok(value)) => value,
        result => {
            let message = match result {
                Ok(Err(message)) => message,
                _ => "Native diarization panic".to_string(),
            };
            LAST_ERROR.with(|slot| *slot.borrow_mut() =
                CString::new(message.replace('\0', " ")).unwrap());
            fallback
        }
    }
}

unsafe fn string(ptr: *const c_char) -> Result<String, String> {
    if ptr.is_null() { return Err("Missing native string".into()); }
    unsafe { CStr::from_ptr(ptr) }.to_str().map(str::to_owned).map_err(|e| e.to_string())
}

fn environment(path: &str) -> Result<parakeet_rs::ort::environment::Environment, String> {
    static ENV: OnceLock<Result<parakeet_rs::ort::environment::Environment, String>> = OnceLock::new();
    ENV.get_or_init(|| {
        let _ = rayon::ThreadPoolBuilder::new().num_threads(2).build_global();
        parakeet_rs::ort::init_from(path).map_err(|e| e.to_string())?
            .with_name("LocalScribeDiarization").build().map_err(|e| e.to_string())
    }).clone()
}

fn segments(values: impl Iterator<Item = (u64, u64, usize)>) -> *mut c_char {
    let rows: Vec<_> = values.filter(|(a,b,_)| b>a)
        .map(|(start,end,speaker)| serde_json::json!({"start":start,"end":end,"speaker":speaker}))
        .collect();
    CString::new(serde_json::to_string(&rows).unwrap()).unwrap().into_raw()
}

#[unsafe(no_mangle)]
pub unsafe extern "C" fn diar_open(model: *const c_char, runtime: *const c_char,
                                   secondary: bool, step: f64) -> *mut Engine {
    unsafe { diar_open_workers(model, runtime, secondary, step, 0) }
}

#[unsafe(no_mangle)]
pub unsafe extern "C" fn diar_open_workers(model: *const c_char, runtime: *const c_char,
                                   secondary: bool, step: f64, worker_count: u32) -> *mut Engine {
    attempt(std::ptr::null_mut(), || {
        if worker_count > 4 { return Err("Invalid VBx worker count".into()); }
        let model = unsafe { string(model) }?;
        // Set Rayon before either facade can initialize its process-wide pool.
        static POOL: std::sync::Once = std::sync::Once::new();
        POOL.call_once(|| { let _ = rayon::ThreadPoolBuilder::new().num_threads(2).build_global(); });
        #[cfg(feature = "ort-trunk")]
        speakrs::inference::set_cpu_trunk_environment(environment(&unsafe { string(runtime) }?)?);
        let engine = if secondary {
            let available = std::thread::available_parallelism().map_or(1, |n| n.get().min(4));
            let count = if worker_count == 0 { available } else { (worker_count as usize).min(available) };
            speakrs::inference::limit_native_cpu_workers(1);
            let pipeline = OwnedDiarizationPipeline::from_dir(model, ExecutionMode::Cpu)
                .map_err(|e| e.to_string())?;
            let mut workers = Vec::with_capacity(count);
            for _ in 1..count {
                workers.push(pipeline.clone_shared().map_err(|e| e.to_string())?);
            }
            workers.push(pipeline);
            Engine::Secondary { workers, pending: Vec::new(), windows: Vec::new(), step }
        } else {
            let env = environment(&unsafe { string(runtime) }?)?;
            let config = ExecutionConfig::new().with_intra_threads(2).with_inter_threads(1).with_environment(env);
            let mut primary = Sortformer::with_config(model, Some(config), DiarizationConfig::default())
                .map_err(|e| e.to_string())?;
            primary.set_profile(StreamingProfile::offline()).map_err(|e| e.to_string())?;
            Engine::Primary(primary)
        };
        Ok(Box::into_raw(Box::new(engine)))
    })
}

#[unsafe(no_mangle)]
pub unsafe extern "C" fn diar_push(handle: *mut Engine, audio: *const f32, count: usize) -> *mut c_char {
    attempt(std::ptr::null_mut(), || {
        if handle.is_null() || audio.is_null() || count>640_000 { return Err("Invalid audio block".into()); }
        let audio = unsafe { std::slice::from_raw_parts(audio,count) };
        match unsafe { &mut *handle } {
            Engine::Primary(model) => {
                let output=model.feed(audio).map_err(|e|e.to_string())?;
                Ok(segments(output.iter().map(|s|(s.start,s.end,s.speaker_id as usize))))
            },
            Engine::Secondary {workers,pending,windows,..} => {
                if windows.len()+pending.len()>=1801 { return Err("Too many VBx windows".into()); }
                pending.push(audio.to_vec());
                if pending.len() == workers.len() { flush_secondary(workers,pending,windows)?; }
                Ok(segments(std::iter::empty()))
            },
        }
    })
}

#[unsafe(no_mangle)]
pub unsafe extern "C" fn diar_finish(handle: *mut Engine) -> *mut c_char {
    attempt(std::ptr::null_mut(), || {
        if handle.is_null() { return Err("Closed diarizer".into()); }
        match unsafe { &mut *handle } {
            Engine::Primary(model) => {
                let output=model.flush().map_err(|e|e.to_string())?;
                Ok(segments(output.iter().map(|s|(s.start,s.end,s.speaker_id as usize))))
            },
            Engine::Secondary {workers,pending,windows,step} => {
                flush_secondary(workers,pending,windows)?;
                if windows.is_empty() { return Ok(segments(std::iter::empty())); }
                let joined=InferenceArtifacts::join_windows(windows,*step).map_err(|e|e.to_string())?;
                windows.clear();
                let output=workers[0].finish_post_inference(joined,&workers[0].pipeline_config())
                    .map_err(|e|e.to_string())?;
                Ok(segments(output.segments.iter().filter_map(|s| {
                    let speaker=s.speaker.strip_prefix("SPEAKER_")?.parse().ok()?;
                    Some(((s.start.max(0.0)*16000.0).round() as u64,
                          (s.end.max(0.0)*16000.0).round() as u64,speaker))
                })))
            },
        }
    })
}

#[unsafe(no_mangle)]
pub unsafe extern "C" fn diar_close(handle: *mut Engine) {
    if !handle.is_null() { drop(unsafe { Box::from_raw(handle) }); }
}

#[unsafe(no_mangle)]
pub extern "C" fn diar_error() -> *const c_char {
    LAST_ERROR.with(|slot|slot.borrow().as_ptr())
}

#[unsafe(no_mangle)]
pub unsafe extern "C" fn diar_string_free(value: *mut c_char) {
    if !value.is_null() { drop(unsafe { CString::from_raw(value) }); }
}
