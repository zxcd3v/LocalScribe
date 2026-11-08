use std::path::PathBuf;

use crate::inference::{NativeWeightsError, TensorShapeError};

/// Supported native CPU model family
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum CpuModelFamily {
    /// PyanNet segmentation 3.0
    Segmentation,
    /// WeSpeaker ResNet34 with the deployed multi-mask head
    Embedding,
}

/// Errors from native CPU loading and computation
#[derive(Debug, thiserror::Error)]
#[non_exhaustive]
pub enum CpuError {
    /// Optional FP32 trunk runtime could not load the validated companion graph.
    #[cfg(feature = "ort-trunk")]
    #[error(transparent)]
    Ort(ort::Error),
    /// Native weight decoding failed
    #[error(transparent)]
    Weights(#[from] NativeWeightsError),
    /// A native tensor did not meet its shape contract
    #[error(transparent)]
    Shape(#[from] TensorShapeError),
    /// The selector does not name a supported native model
    #[error("unsupported native CPU {family:?} model `{path}`")]
    UnsupportedModel {
        /// The requested model family
        family: CpuModelFamily,
        /// The unsupported selector
        path: PathBuf,
    },
}

#[cfg(feature = "ort-trunk")]
impl<R> From<ort::Error<R>> for CpuError {
    fn from(error: ort::Error<R>) -> Self {
        Self::Ort(ort::Error::new(error.to_string()))
    }
}
