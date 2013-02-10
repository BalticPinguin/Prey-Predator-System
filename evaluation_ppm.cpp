#include"ppm.h"

void Ppm::evaluation(){
   vector<Animal> eval;
   Animal foo;
   for(int i=0; i<runs; i++){
      int k=0;
      eval.push_back(foo);
      for(float j=runtime; j>=0;){ //hier eventuell Schrittweite bei der Auswertung ändern!!!
         if(prepre[i].time[k+1]>=j){  // nächste Reaktionszeit kleiner gleich testzeit: reaktionszeit weiter gehen
            k++;
         }
         else{ //Reaktionszeit < testzeit: Auswerten
            eval[i].time.push_back(prepre[i].time[k]);
            eval[i].prey.push_back(prepre[i].prey[k]);
            eval[i].pred.push_back(prepre[i].pred[k]);
            j-=5.0;
         }
      }
   } //now all values are in eval... is has a fixed size (depending only on reactiontime and the steps j

   vector<double> mean_pred, mean_prey, abb_pred, abb_prey;

   for(unsigned int j=0; j<eval[0].pred.size(); j++){
      mean_pred.push_back(double(eval[0].pred[j]));
      mean_prey.push_back(double(eval[0].prey[j]));
      for(unsigned int i=1; i<eval.size(); i++){
         mean_pred[j]+=double(eval[i].pred[j]);
         mean_prey[j]+=double(eval[i].prey[j]);
      }
   }
   double n= double(mean_pred.size());
   for(unsigned int i=0; i<n; i++){
      mean_pred[i]/=runs;
      mean_prey[i]/=runs;
   }
   int need=mean_pred.size();
   for( int j=0; j<need; j++){
      abb_pred.push_back(pow(double(eval[0].pred[j]-mean_pred[j]),2));
      abb_prey.push_back(pow(double(eval[0].prey[j]-mean_prey[j]),2));
      for(unsigned int i=1; i<eval.size(); i++){
         abb_pred[j]+=pow(double(eval[i].pred[j]-mean_pred[j]),2);
         abb_prey[j]+=pow(double(eval[i].prey[j]-mean_prey[j]),2);
      }
   }
   for(unsigned int i=0; i<n; i++){
      abb_pred[i]/=double(need);
      abb_pred[i]=sqrt(abb_pred[i]);
      abb_pred[i]/=double(need);
      abb_pred[i]=sqrt(abb_prey[i]);
   }

   for(unsigned int i=0; i<mean_pred.size(); i++){ //output: evaluated data for further evaluation 
      cout<<i<<"   "<<mean_pred[i]<<"  "<<mean_prey[i]<<"  "<<abb_pred[i]<<"  "<<abb_prey[i]<<endl;
   }
}

/* 
Daten in der klasse:

     float  k1, k2, k12, k21;
     vector<Animal> prepre; // it doesn't accept this type... propably I have to install this package...
     int runs;
     double runtime;

 das Object  hat nun die Struktur:
    

                        /- vector time (diese drei vectoren beinhalten eine Laufzeit
animal ->  prepre (datenvetor) ---- vector prey
                        \_ vector pred
*/
