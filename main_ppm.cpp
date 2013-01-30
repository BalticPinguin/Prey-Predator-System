#include"ppm.h"

int main(){
   Ppm foo(80, 40, 50000, 5.6, 5.8, 0.015, 0.015, 1); // Ppm(int prey, int predator, double time, float konst1, float konst2, float konst21, float konst12, int run){
   foo.gillespie();
//   foo.print();
   foo.evaluation(); //eventuell noch weitere: graphische Auswertung (in ein Bild schreiben), 
   return 0;
}
