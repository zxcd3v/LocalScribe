#!/usr/bin/env python3
"""Build labelled stress inputs from two supplied mono PCM16 16 kHz source WAVs.
Labels describe construction, not measured diarization accuracy. Long output is streamed.
"""
import argparse,array,json,math,pathlib,random,sys,wave
p=argparse.ArgumentParser();p.add_argument('--a',type=pathlib.Path,required=True);p.add_argument('--b',type=pathlib.Path,required=True);p.add_argument('--out',type=pathlib.Path,required=True);p.add_argument('--long-minutes',type=int,default=5);a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True)
def read(path):
 with wave.open(str(path),'rb') as w:
  assert (w.getnchannels(),w.getsampwidth(),w.getframerate())==(1,2,16000)
  s=array.array('h',w.readframes(w.getnframes()))
  if sys.byteorder!='little':s.byteswap()
  return s
x,y=read(a.a),read(a.b);silence=array.array('h',[0])*16000
manifest={}
def save(name,parts):
 labels=[];offset=0
 with wave.open(str(a.out/(name+'.wav')),'wb') as w:
  w.setnchannels(1);w.setsampwidth(2);w.setframerate(16000)
  for label,samples in parts:
   w.writeframes(samples.tobytes());labels.append({'start_ms':offset//16,'end_ms':(offset+len(samples))//16,'source':label});offset+=len(samples)
 manifest[name]=labels
save('single',[('A',x)]);save('two-speakers',[('A',x),('silence',silence),('B',y),('silence',silence),('A',x)])
save('rapid-turns',[(k,s[:16000]) for _ in range(5) for k,s in [('A',x),('B',y)]])
save('long-pause',[('A',x),('silence',silence*30),('B',y)])
save('short',[('A',x[16000:20000])])
r=random.Random(42);noisy=array.array('h',(max(-32768,min(32767,int(v+r.gauss(0,1800)))) for v in x));save('noisy',[('A+noise',noisy)])
overlap=array.array('h',((int(x[i])+int(y[i]))//2 for i in range(min(len(x),len(y)))));save('overlap',[('A+B',overlap)])
# No accumulation of the complete long recording.
def long_parts():
 for i in range(max(1,a.long_minutes*60*16000//(len(x)+16000))):yield 'A',x;yield 'silence',silence
save('long',long_parts());(a.out/'reference.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2))
print('Wrote',len(manifest),'fixtures to',a.out)
