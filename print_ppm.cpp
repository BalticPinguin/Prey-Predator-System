#include"ppm.h"


void Ppm::print(){
   for(int j=0; j<runs; j++){
      for( unsigned int i=0; i<prepre[j].time.size(); i++){
         cout<<prepre[j].time[i]<<"  ";
         cout<<i<<" ";
         cout<<prepre[j].prey[i]<<"  ";
         cout<<prepre[j].pred[i]<<"  "<<endl;
      }
     //   cout<<endl;
   }
}

void Animal::print(){
   for( unsigned int i=0; i<time.size(); i++){
 //     cout<<time[i]<<"  ";
      cout<<prey[i]<<"  ";
      cout<<pred[i]<<"  "<<endl;
   }
     //   cout<<endl;
}
