 class Hexagono implements Figura{
   float ap, l;
   
   Hexagono(int ap_, int l_){
     ap=ap_;
     l=l_;
   }
   float perimetro(){
     return l*6;
   }
   float area(){
    return ((l*6)*ap)/2; 
   }
 }  
 