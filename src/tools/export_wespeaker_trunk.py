#!/usr/bin/env python3
"""Export the deployed folded FP32 ResNet trunk without modifying weights.

The graph ends before weighted pooling; native mask handling and the projection
remain unchanged. Requires onnx and numpy in the development environment only.
"""
import argparse
import hashlib
import json
import struct
from pathlib import Path

import numpy as np
import onnx
from onnx import TensorProto, helper, numpy_helper


def export(source: Path, output: Path):
    raw = source.read_bytes()
    length = struct.unpack('<Q', raw[:8])[0]
    metadata = json.loads(raw[8:8 + length])
    data = memoryview(raw)[8 + length:]
    nodes, tensors, used = [], [], set()

    def tensor(name):
        item = metadata[name]
        if item['dtype'] != 'F32':
            raise ValueError(f'{name}: expected unchanged FP32')
        start, end = item['data_offsets']
        array = np.frombuffer(data[start:end], dtype='<f4').reshape(item['shape'])
        tensors.append(numpy_helper.from_array(array, name))
        used.add(name)
        return name

    def conv(prefix, value, stride=1, kernel=3):
        result = prefix + '.out'
        nodes.append(helper.make_node('Conv', [value, tensor(prefix + '.weight'),
                     tensor(prefix + '.weight_bias')], [result], name=prefix,
                     strides=[stride, stride], pads=[kernel // 2] * 4,
                     kernel_shape=[kernel, kernel]))
        return result

    def relu(value):
        result = value + '.relu'
        nodes.append(helper.make_node('Relu', [value], [result]))
        return result

    value = relu(conv('resnet.conv1', 'fbank'))
    for stage, count in enumerate([3, 4, 6, 3], 1):
        for index in range(count):
            prefix = f'resnet.layer{stage}.{index}'
            stride = 2 if stage > 1 and index == 0 else 1
            residual = value
            hidden = relu(conv(prefix + '.conv1', value, stride))
            hidden = conv(prefix + '.conv2', hidden)
            if stride == 2:
                residual = conv(prefix + '.shortcut.0', residual, stride, 1)
            value = prefix + '.sum'
            nodes.append(helper.make_node('Add', [hidden, residual], [value]))
            value = relu(value)
    nodes.append(helper.make_node('Identity', [value], ['features']))
    expected = set(metadata) - {'__metadata__', 'resnet.seg_1.weight', 'resnet.seg_1.bias'}
    if used != expected:
        raise ValueError(f'Tensor inventory mismatch: {used ^ expected}')
    graph = helper.make_graph(nodes, 'LocalScribe.WeSpeaker.unchanged-FP32-trunk',
        [helper.make_tensor_value_info('fbank', TensorProto.FLOAT, [1, 1, 80, 998])],
        [helper.make_tensor_value_info('features', TensorProto.FLOAT, [1, 256, 10, 125])], tensors)
    model = helper.make_model(graph, producer_name='LocalScribe',
                              opset_imports=[helper.make_opsetid('', 18)], ir_version=10)
    helper.set_model_props(model, {'source.sha256': hashlib.sha256(raw).hexdigest(),
                                  'precision': 'FP32', 'pooling': 'native weighted masks'})
    onnx.checker.check_model(model, full_check=True)
    output.parent.mkdir(parents=True, exist_ok=True)
    onnx.save(model, output)
    print(json.dumps({'output': str(output), 'bytes': output.stat().st_size,
                      'sha256': hashlib.sha256(output.read_bytes()).hexdigest(),
                      'source_sha256': hashlib.sha256(raw).hexdigest(),
                      'tensors': len(tensors), 'nodes': len(nodes)}, indent=2))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    export(args.source, args.output)
