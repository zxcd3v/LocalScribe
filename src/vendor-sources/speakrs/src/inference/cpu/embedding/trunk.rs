//! Fixed folded-bias ResNet34 topology and bounded activation buffers

use super::super::conv::{Conv2d, Conv2dSpec, ConvWorkspace};
use crate::inference::native_model::WeightsFile;
use crate::inference::{CpuError, InferenceError, TensorShapeError};
use ndarray::{ArrayView3, ArrayViewMut3};

#[cfg(feature = "ort-trunk")]
static ENVIRONMENT: std::sync::OnceLock<ort::environment::Environment> = std::sync::OnceLock::new();

#[cfg(feature = "ort-trunk")]
pub(crate) fn set_environment(environment: ort::environment::Environment) {
    let _ = ENVIRONMENT.set(environment);
}

const STAGES: [(usize, usize); 4] = [(32, 3), (64, 4), (128, 6), (256, 3)];
const MAX_ACTIVATION: usize = 32 * 80 * 998;

struct Layer {
    conv: Conv2d,
    output: [usize; 3],
}
struct Block {
    first: Layer,
    second: Layer,
    shortcut: Option<Layer>,
}
pub(super) struct Trunk {
    stem: Layer,
    blocks: Vec<Block>,
    #[cfg(feature = "ort-trunk")]
    optimized: Option<std::path::PathBuf>,
}

pub(super) struct TrunkScratch {
    input: Vec<f32>,
    output: Vec<f32>,
    hidden: Vec<f32>,
    shortcut: Vec<f32>,
    convolution: ConvWorkspace,
    #[cfg(feature = "ort-trunk")]
    optimized: Option<ort::session::Session>,
}

impl TrunkScratch {
    pub(super) fn new() -> Self {
        Self {
            input: vec![0.0; MAX_ACTIVATION],
            output: vec![0.0; MAX_ACTIVATION],
            hidden: vec![0.0; MAX_ACTIVATION],
            shortcut: vec![0.0; 64 * 40 * 499],
            convolution: ConvWorkspace::new(),
            #[cfg(feature = "ort-trunk")]
            optimized: None,
        }
    }
}

impl Layer {
    fn load(
        file: &WeightsFile,
        name: &str,
        input: [usize; 3],
        channels: usize,
        kernel: usize,
        stride: usize,
    ) -> Result<Self, CpuError> {
        let spec = Conv2dSpec::new(input[0], channels, kernel, stride, kernel / 2)?;
        let (height, width) = spec.output_shape(input[1], input[2])?;
        let weight = file.read_f32(
            &format!("{name}.weight"),
            &[channels, input[0], kernel, kernel],
        )?;
        let bias = file.read_f32(&format!("{name}.weight_bias"), &[channels])?;
        Ok(Self {
            conv: Conv2d::new(spec, weight, bias)?,
            output: [channels, height, width],
        })
    }

    fn forward(
        &self,
        input: &[f32],
        shape: [usize; 3],
        output: &mut [f32],
        scratch: &mut ConvWorkspace,
    ) -> Result<(), InferenceError> {
        let input =
            ArrayView3::from_shape(shape, &input[..elements(shape)]).map_err(array_error)?;
        let output = ArrayViewMut3::from_shape(self.output, &mut output[..elements(self.output)])
            .map_err(array_error)?;
        self.conv.forward(input, output, scratch)
    }
}

impl Trunk {
    pub(super) fn inventory() -> Vec<String> {
        let mut prefixes = vec!["resnet.conv1".to_owned()];
        for (stage, (_, count)) in STAGES.iter().enumerate() {
            for index in 0..*count {
                let prefix = format!("resnet.layer{}.{index}", stage + 1);
                prefixes.extend([format!("{prefix}.conv1"), format!("{prefix}.conv2")]);
                if stage > 0 && index == 0 {
                    prefixes.push(format!("{prefix}.shortcut.0"));
                }
            }
        }
        let mut names: Vec<String> = prefixes
            .into_iter()
            .flat_map(|prefix| [format!("{prefix}.weight"), format!("{prefix}.weight_bias")])
            .collect();
        names.extend([
            "resnet.seg_1.weight".to_owned(),
            "resnet.seg_1.bias".to_owned(),
        ]);
        names.sort();
        names
    }

    pub(super) fn load(file: &WeightsFile) -> Result<Self, CpuError> {
        let expected = Self::inventory();
        let actual = file.names();
        if expected != actual {
            let missing: Vec<_> = expected
                .iter()
                .filter(|name| !actual.contains(name))
                .collect();
            let extra: Vec<_> = actual
                .iter()
                .filter(|name| !expected.contains(name))
                .collect();
            return Err(TensorShapeError::ShapeMismatch {
                context: "CPU embedding tensor inventory (missing or extra names)",
                expected: vec![expected.len(), missing.len()],
                actual: vec![actual.len(), extra.len()],
            }
            .into());
        }
        let stem = Layer::load(file, "resnet.conv1", [1, 80, 998], 32, 3, 1)?;
        let mut input = stem.output;
        let mut blocks = Vec::with_capacity(16);
        for (stage, (channels, count)) in STAGES.iter().enumerate() {
            for index in 0..*count {
                let stride = if stage > 0 && index == 0 { 2 } else { 1 };
                let prefix = format!("resnet.layer{}.{index}", stage + 1);
                let first = Layer::load(
                    file,
                    &format!("{prefix}.conv1"),
                    input,
                    *channels,
                    3,
                    stride,
                )?;
                let second = Layer::load(
                    file,
                    &format!("{prefix}.conv2"),
                    first.output,
                    *channels,
                    3,
                    1,
                )?;
                let shortcut = if stride == 2 {
                    Some(Layer::load(
                        file,
                        &format!("{prefix}.shortcut.0"),
                        input,
                        *channels,
                        1,
                        stride,
                    )?)
                } else {
                    None
                };
                input = second.output;
                blocks.push(Block {
                    first,
                    second,
                    shortcut,
                });
            }
        }
        #[cfg(feature = "ort-trunk")]
        let optimized = {
            let companion = file.source_path().with_extension("trunk.onnx");
            if cfg!(feature = "embedded-ort-trunk") || companion.is_file() {
                Some(companion)
            } else { None }
        };
        Ok(Self { stem, blocks,
            #[cfg(feature = "ort-trunk")]
            optimized,
        })
    }

    pub(super) fn forward<'a>(
        &self,
        fbank: &[f32],
        scratch: &'a mut TrunkScratch,
    ) -> Result<ArrayView3<'a, f32>, InferenceError> {
        #[cfg(feature = "ort-trunk")]
        if let Some(companion) = &self.optimized {
            use ort::value::TensorRef;
            // Each bounded window worker owns a session and activation buffers.
            // Sharing a mutex-protected session would serialize parallel workers.
            if scratch.optimized.is_none() {
                let create = || -> Result<ort::session::Session, CpuError> {
                    let environment = ENVIRONMENT.get().ok_or_else(||
                        ort::Error::new("FP32 trunk requires the caller-owned runtime environment"))?;
                    let mut builder = ort::session::Session::builder(environment)?
                        .with_independent_thread_pool()?
                        .with_intra_threads(1)?
                        .with_inter_threads(1)?
                        .with_config_entry("session.intra_op.allow_spinning", "0")?
                        .with_config_entry("session.inter_op.allow_spinning", "0")?
                        .with_memory_pattern(true)?;
                    #[cfg(feature = "embedded-ort-trunk")]
                    let session = builder.commit_from_memory(include_bytes!(env!("LOCALSCRIBE_TRUNK_ONNX")))?;
                    #[cfg(not(feature = "embedded-ort-trunk"))]
                    let session = builder.commit_from_file(companion)?;
                    Ok(session)
                };
                scratch.optimized = Some(create()?);
            }
            let session = scratch.optimized.as_mut().expect("validated private trunk session");
            let input = TensorRef::from_array_view(([1usize, 1, 80, 998], fbank))?;
            let outputs = session.run(ort::inputs!["fbank" => input])?;
            let (shape, values) = outputs["features"].try_extract_tensor::<f32>()?;
            if shape.as_ref() != [1, 256, 10, 125] {
                return Err(TensorShapeError::ShapeMismatch {
                    context: "FP32 WeSpeaker trunk output",
                    expected: vec![1, 256, 10, 125],
                    actual: shape.iter().map(|n| *n as usize).collect(),
                }.into());
            }
            scratch.input[..values.len()].copy_from_slice(values);
            return ArrayView3::from_shape((256, 10, 125),
                &scratch.input[..256 * 10 * 125]).map_err(array_error);
        }
        self.stem.forward(
            fbank,
            [1, 80, 998],
            &mut scratch.input,
            &mut scratch.convolution,
        )?;
        relu(&mut scratch.input[..elements(self.stem.output)]);
        let mut shape = self.stem.output;
        for block in &self.blocks {
            block.first.forward(
                &scratch.input,
                shape,
                &mut scratch.hidden,
                &mut scratch.convolution,
            )?;
            relu(&mut scratch.hidden[..elements(block.first.output)]);
            block.second.forward(
                &scratch.hidden,
                block.first.output,
                &mut scratch.output,
                &mut scratch.convolution,
            )?;
            let len = elements(block.second.output);
            let residual = if let Some(shortcut) = &block.shortcut {
                shortcut.forward(
                    &scratch.input,
                    shape,
                    &mut scratch.shortcut,
                    &mut scratch.convolution,
                )?;
                &scratch.shortcut[..len]
            } else {
                &scratch.input[..len]
            };
            for (value, residual) in scratch.output[..len].iter_mut().zip(residual) {
                *value = (*value + residual).max(0.0);
            }
            std::mem::swap(&mut scratch.input, &mut scratch.output);
            shape = block.second.output;
        }
        ArrayView3::from_shape(shape, &scratch.input[..elements(shape)]).map_err(array_error)
    }
}

fn elements(shape: [usize; 3]) -> usize {
    shape.into_iter().product()
}
fn relu(values: &mut [f32]) {
    for value in values {
        *value = value.max(0.0);
    }
}
fn array_error(source: ndarray::ShapeError) -> InferenceError {
    InferenceError::OutputArray {
        context: "CPU trunk scratch",
        source,
    }
}
