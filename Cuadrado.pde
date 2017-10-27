class Cuadrado implements Figura{
 float l;
 
 Cuadrado(int l_){
  l=l_; 
 }
 float perimetro(){
   return l*4;
 }
 
 float area(){
   return l*l;
 }
}  