class Rectangulo implements Figura{
   float l, h;
   
   Rectangulo(int l_, int h_){
     l=l_;
     h=h_;
   }
   float perimetro(){
     return 2*(l+h);
   }
   float area(){
    return l*h; 
   }
 }
 