class Heptagono implements Figura{
   float ap, l;
   
   Heptagono(int ap_, int l_){
     ap=ap_;
     l=l_;
   }
   float perimetro(){
     return l*7;
   }
   float area(){
    return ((l*7)*ap)/2; 
   }
 } 
 