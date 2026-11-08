LocalScribe bounds independent 10-second windows outside this library. The local
CPU worker-limit hook keeps one private workspace worker per pipeline when the
caller schedules independent windows. Single-threaded matrixmultiply kernels avoid
multiplying another thread pool inside each model workspace. Weights, filterbanks,
model topology, segmentation windows and global VBx clustering remain unchanged.
Exact old/new C-ABI output comparisons and labelled-corpus scores live under
LocalScribe/build/performance-082; production stride remains one second.
