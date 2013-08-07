#include<iostream> 
#include<vector> 
 
using namespace std; 
 
class Animal{ 
  public: 
    void print();
    Animal(); 
    ~Animal(); 
    vector<int> prey; 
    vector<int> pred; 
    vector<float> time; 
}; 
