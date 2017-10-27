 class Circulo implements Figura{
   float r, pi;
   
   Circulo(int r_, float pi_){
     r=r_;
     pi=pi_;
   }
   float perimetro(){
     return 2*pi*r;
   }
   float area(){
    return pi*(r*r); 
   }
 }
 