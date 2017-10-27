


class Triangulo implements Figura{
  float b, h,l1,l2,l3;
  
  Triangulo (int b_,int h_, int l1_, int l2_){
   b= b_; 
   h=h_;
   l1=l1_;
   l2=l2_;  
  }
  
  float perimetro(){
    return b+l1+l2;
  }
  
  float area(){
    return b*h/2;
  }
}