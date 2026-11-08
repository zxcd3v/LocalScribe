//! Opt-in timings: stage labels only, no input content.
use std::{sync::OnceLock, time::Instant};
pub(crate) fn record(stage: &str, start: Instant) {
    static ENABLED: OnceLock<bool> = OnceLock::new();
    if *ENABLED.get_or_init(|| std::env::var("LOCALSCRIBE_NATIVE_PROFILE").as_deref() == Ok("1")) {
        eprintln!("localscribe_native stage={} elapsed_us={}", stage, start.elapsed().as_micros());
    }
}
