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
 assert(argc==5);
 SherpaOnnxSpeakerEmbeddingExtractorConfig config{};
 config.model=argv[1]; config.num_threads=2; config.provider="cpu";
 auto e=SherpaOnnxCreateSpeakerEmbeddingExtractor(&config); assert(e);
 auto w=SherpaOnnxReadWave(argv[2]); assert(w && w->sample_rate==16000);
 int start=std::stoi(argv[3]), end=std::stoi(argv[4]); assert(start>=0 && end<=w->num_samples && end>start);
 auto v=embed(e,w,start,end-start);
 std::cout<<"["; for(size_t i=0;i<v.size();++i) { if(i)std::cout<<",";std::cout<<v[i]; } std::cout<<"]\n";
 SherpaOnnxFreeWave(w); SherpaOnnxDestroySpeakerEmbeddingExtractor(e);
}
