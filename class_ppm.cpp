#include"ppm.h"


Ppm::Ppm(int prey, int predator, double time, float konst1, float konst2, float konst21, float konst12, int run){
   k1=konst1;
   k2=konst2;
   k12=konst12;
   k21=konst21;
   Animal foo;
   foo.time.push_back(time);
   foo.prey.push_back(prey);
   foo.pred.push_back(predator);
   prepre.push_back(foo);
   runs=run;
   runtime=time;
}

Ppm::~Ppm(){
}

Animal::Animal(){
}

Animal::~Animal(){
}
