#include<iostream>
#include<vector>
#include<stdlib.h>
#include<time.h>
#include<math.h>
#include"animal_ppm.h"

using namespace std;

class Ppm{ //pray-predator-model
  public:
     Ppm(int prey, int predator, double time, float konst1, float konst2, float konst21, float konst12, int run);
     ~Ppm();
     void evaluation();
     void gillespie();
     void print();
  private:
     float  k1, k2, k12, k21;
     vector<Animal> prepre; 
     int runs;
     double runtime;
};

