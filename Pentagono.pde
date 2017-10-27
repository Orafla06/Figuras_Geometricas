 class Pentagono implements Figura{
   float ap, l;
   
   Pentagono(int ap_, int l_){
     ap=ap_;
     l=l_;
   }
   float perimetro(){
     return l*5;
   }
   float area(){
    return ((l*5)*ap)/2; 
   }
 }
 