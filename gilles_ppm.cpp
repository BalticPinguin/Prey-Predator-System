#include"ppm.h"

void Ppm::gillespie(){
   srand(time(NULL));

   for(int i=0; i<runs; i++){

      if(i!=0){
          prepre.push_back(Animal());
          prepre[i].time.push_back(prepre[0].time[0]);
          prepre[i].prey.push_back(prepre[0].prey[0]);
          prepre[i].pred.push_back(prepre[0].pred[0]);
      }

      for(int j=0; prepre[i].time[j]>0; j++){ //stops iteration, if time is out...

             //first: look for time for reaction-step
         double changetime=exp(((double(rand())-RAND_MAX)/double(rand())));
         prepre[i].time.push_back(prepre[i].time[j]-changetime); //time is counted down...

             //second: look for the reaction, that is made...
         double reaction=double(rand())/RAND_MAX;
         double foo=k1*prepre[i].prey[j];
         double bar=foo+k2*prepre[i].pred[j];
         double foobar=bar+(k21+k12)*(prepre[i].pred[j]*prepre[i].prey[j]);
         double normal= foobar;
               //if(normal==0)
                 //  normal=1;
         if (reaction<=foo/normal){ //a new  prey is born
            prepre[i].prey.push_back(prepre[i].prey[j]+1);
            prepre[i].pred.push_back(prepre[i].pred[j]);
         }
         else if(reaction<=bar/normal){ // a pred died
            prepre[i].prey.push_back(prepre[i].prey[j]);
            prepre[i].pred.push_back(prepre[i].pred[j]-1); 
         }
         else { //a pred ate a prey
            prepre[i].prey.push_back(prepre[i].prey[j]-1);
            prepre[i].pred.push_back(prepre[i].pred[j]+1); 
         }
         
         if(prepre[i].prey[j+1]<0 || prepre[i].pred[j+1]<0){ //no populations smaller 0 possible!
             prepre[i].time[j+1]=-1;
         }
      }
   }
}


