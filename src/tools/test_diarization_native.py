"""Run the same streaming C ABI used by Android, with bounded audio reads."""
import argparse, ctypes, json, wave
from pathlib import Path
p=argparse.ArgumentParser()
p.add_argument('--library',type=Path,required=True)
p.add_argument('--runtime',type=Path,required=True)
p.add_argument('--model',type=Path,required=True)
p.add_argument('--wav',type=Path,required=True)
p.add_argument('--secondary',action='store_true')
p.add_argument('--step',type=float,default=1.0)
p.add_argument('--workers',type=int,default=0)
p.add_argument('--output',type=Path,required=True)
args=p.parse_args()
import array
lib=ctypes.CDLL(str(args.library.resolve()))
lib.diar_open.argtypes=[ctypes.c_char_p,ctypes.c_char_p,ctypes.c_bool,ctypes.c_double]
lib.diar_open.restype=ctypes.c_void_p
lib.diar_push.argtypes=[ctypes.c_void_p,ctypes.POINTER(ctypes.c_float),ctypes.c_size_t]
lib.diar_push.restype=ctypes.c_void_p
lib.diar_finish.argtypes=[ctypes.c_void_p]
lib.diar_finish.restype=ctypes.c_void_p
lib.diar_error.restype=ctypes.c_char_p
lib.diar_close.argtypes=[ctypes.c_void_p]
lib.diar_string_free.argtypes=[ctypes.c_void_p]
def check(ptr):
    if not ptr: raise RuntimeError(lib.diar_error().decode())
    try: return json.loads(ctypes.string_at(ptr))
    finally: lib.diar_string_free(ptr)
if args.workers:
    lib.diar_open_workers.argtypes=lib.diar_open.argtypes+[ctypes.c_uint]
    lib.diar_open_workers.restype=ctypes.c_void_p
    h=lib.diar_open_workers(str(args.model.resolve()).encode(),str(args.runtime.resolve()).encode(),args.secondary,args.step,args.workers)
else:
    h=lib.diar_open(str(args.model.resolve()).encode(),str(args.runtime.resolve()).encode(),args.secondary,args.step)
if not h: raise RuntimeError(lib.diar_error().decode())
out=[]
try:
    with wave.open(str(args.wav)) as w:
        assert (w.getnchannels(),w.getsampwidth(),w.getframerate())==(1,2,16000)
        total=w.getnframes()
        for offset in range(0,total,round(16000*args.step) if args.secondary else 160000):
            w.setpos(offset)
            pcm=array.array('h',w.readframes(160000))
            samples=(ctypes.c_float*len(pcm))(*(x/32768 for x in pcm))
            out.extend(check(lib.diar_push(h,samples,len(samples))))
        out.extend(check(lib.diar_finish(h)))
finally: lib.diar_close(h)
args.output.write_text(json.dumps(out))
print(f'{len(out)} turns, {len({x["speaker"] for x in out})} speakers',flush=True)
