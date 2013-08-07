#include"ppm.h"

int main(){
   Ppm foo(2500, 25, 10000, 1.00, 100, 0.04, 0.04, 120); // Ppm(int prey, int predator, double time, float konst1, float konst2, float konst21, float konst12, int run){
   foo.gillespie();
//   foo.print();
   foo.evaluation(); 
   return 0;
}
