#!/usr/bin/env python3
"""Rebuild official ORT 1.28.0 Java JNI against the shared sherpa ORT 1.28.2.
No ORT source patching or duplicate runtime. Requires JDK 17+, NDK r28c for Android.
Linux form is for actual-model host tests with the same ORT 1.28.2 ABI.
"""
import argparse,hashlib,os,pathlib,subprocess
ROOT=pathlib.Path(__file__).resolve().parents[1]
def main():
 a=argparse.ArgumentParser(description=__doc__)
 a.add_argument('--ndk',type=pathlib.Path)
 a.add_argument('--abi', choices=['arm64-v8a', 'x86_64'], default='arm64-v8a')
 a.add_argument('--jdk',type=pathlib.Path,default=pathlib.Path(os.environ.get('JAVA_HOME','/usr/lib/jvm/default-java')))
 a.add_argument('--runtime',type=pathlib.Path)
 a.add_argument('--output',type=pathlib.Path)
 args=a.parse_args()
 src=ROOT/'ort/upstream';build=ROOT/(f'ort/build/jni-headers-android-{args.abi}' if args.ndk else 'ort/build/jni-headers-linux');build.mkdir(parents=True,exist_ok=True)
 (build/'onnxruntime_config.h').write_text('#pragma once\n// CPU-only Java bridge; optional providers and training disabled.\n')
 for line in (src/'SOURCES.sha256').read_text().splitlines():
  expected,name=line.split('  ',1)
  assert hashlib.sha256((src/name).read_bytes()).hexdigest()==expected,name
 subprocess.run([str(args.jdk/'bin/javac'),'--release','17','-h',str(build),'-d',str(build/'classes'),*[str(p) for p in (src/'java/src/main/java').rglob('*.java')]],check=True)
 if args.ndk:
  triple={'arm64-v8a':'aarch64-linux-android','x86_64':'x86_64-linux-android'}[args.abi]
  cc=str(args.ndk.resolve()/f'toolchains/llvm/prebuilt/linux-x86_64/bin/{triple}26-clang')
  runtime=args.runtime or ROOT/f'sherpa/src/main/jniLibs/{args.abi}/libonnxruntime.so'
  output=args.output or ROOT/f'ort/src/main/jniLibs/{args.abi}/libonnxruntime4j_jni.so'
  extra=['-Wl,-z,max-page-size=16384','-Wl,-z,common-page-size=16384']
  includes=[]
 else:
  cc='cc';runtime=args.runtime;output=args.output
  assert runtime and output,'Linux build requires --runtime and --output'
  includes=[args.jdk/'include',args.jdk/'include/linux'];extra=[]
 output=output.resolve();output.parent.mkdir(parents=True,exist_ok=True)
 includes += [src/'include',src/'include/onnxruntime/core/session',src/'orttraining/orttraining/training_api/include',build]
 command=[cc,'-std=c11','-DORT_VERSION="1.28.2"','-O2','-fPIC','-shared','-Wl,-z,defs','-Wl,-soname,libonnxruntime4j_jni.so',*extra,*['-I'+str(p.resolve()) for p in includes],*[str(p) for p in (src/'java/src/main/native').glob('*.c')],str(runtime.resolve()),'-lm','-ldl','-o',str(output)]
 subprocess.run(command,check=True)
 print(output,hashlib.sha256(output.read_bytes()).hexdigest())
if __name__=='__main__':main()
