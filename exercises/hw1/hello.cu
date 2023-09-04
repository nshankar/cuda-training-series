#include <stdio.h>

__global__ void hello(){

  printf("Hello World from block: %u, thread: %u\n", threadIdx.x, blockIdx.x);
}

int main(){
  hello<<<2,2>>>();
  cudaDeviceSynchronize();
}

