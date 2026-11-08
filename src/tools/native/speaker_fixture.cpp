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

int main(int argc, char** argv) {
 assert(argc == 4);
 SherpaOnnxSpeakerEmbeddingExtractorConfig ec{};
 ec.model=argv[1]; ec.num_threads=2; ec.provider="cpu";
 auto e=SherpaOnnxCreateSpeakerEmbeddingExtractor(&ec); assert(e);
 std::cout << "[";
 bool first=true;
 for(int person=0; person<2; ++person) {
  auto w=SherpaOnnxReadWave(argv[person+2]); assert(w && w->sample_rate==16000);
  for(int start=0; start+19200<=w->num_samples; start+=19200) {
   auto v=embed(e,w,start,19200);
   if(!first) std::cout << ","; first=false;
   std::cout << "{\"person\":" << person << ",\"source_start\":" << start << ",\"embedding\":[";
   for(size_t i=0;i<v.size();++i) { if(i)std::cout << ","; std::cout << v[i]; }
   std::cout << "]}";
  }
  SherpaOnnxFreeWave(w);
 }
 std::cout << "]\n";
 SherpaOnnxDestroySpeakerEmbeddingExtractor(e);
}
