class Octagono implements Figura{
   float ap, l;
   
   Octagono(int ap_, int l_){
     ap=ap_;
     l=l_;
   }
   float perimetro(){
     return l*8;
   }
   float area(){
    return ((l*8)*ap)/2; 
   }      
} 