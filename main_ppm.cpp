#include"ppm.h"

int main(){
   Ppm foo(250, 25, 50000, 12.8, 7.1, 0.015, 0.015, 900); // Ppm(int prey, int predator, double time, float konst1, float konst2, float konst21, float konst12, int run){
   foo.gillespie();
//   foo.print();
   foo.evaluation(); 
   return 0;
}
