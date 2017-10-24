Figura Tri;
Figura Cua;
Figura Rec;
Figura Cir;
Figura Pen;
Figura Hex;
Figura Hep;
Figura Oct;
ArrayList <Figura> Figuras;

//Implementar en las clases un método que haga que rote, se mueva, o se dibuje, de; triángulo,
//cuadrado, rectángulo, círculo, pentágono, heptágono, hexágono, octágono.

void setup(){
  size(800,400);
  rectMode(CENTER);
  background(0);
  noStroke();
  Tri= new Triangulo(90,80,90,90);    //base, altura, lado1, lado2
  Cua= new Cuadrado(80);           //cada lado
  Rec= new Rectangulo(60,30);      //largo, alto
  Cir= new Circulo(40,3.1416);    //radio, pi
  Pen= new Pentagono(40,50);       //apotema, cada lado
  Hex= new Hexagono(40,40);         //apotema, cada lado
  Hep= new Heptagono(40,30);        //apotema, cada lado
  Oct= new Octagono(40,20);         //apotema, cada lado
  
  Figuras= new ArrayList <Figura>();
  Figuras.add(Tri);
  Figuras.add(Cua);
  Figuras.add(Rec);  
  Figuras.add(Cir);
  Figuras.add(Pen);  
  Figuras.add(Hex);  
  Figuras.add(Hep);  
  Figuras.add(Oct); 
}

void draw(){
  background(0);
  noStroke();
  textSize(20);
  textAlign(CENTER);
  fill(200,100,50);
  text("FIGURAS GEOMETRICAS", width*0.5, height*0.08); 
  text("Triángulo", width*0.14, height*0.5);   
  text("Cuadrado", width*0.39, height*0.5);    
  text("Rectángulo", width*0.61, height*0.5);  
  text("Círculo", width*0.86, height*0.5); 
  text("Pentágono", width*0.14, height*0.9);   
  text("Hexágono", width*0.39, height*0.9);    
  text("Heptágono", width*0.61, height*0.9);  
  text("Octágono", width*0.86, height*0.9); 

  println("Triángulo = A: " + Tri.area() + " / P: " + Tri.perimetro());
  println("Cuadrado = A: " + Cua.area() + " / P: " + Cua.perimetro());  
  println("Rectángulo = A: " + Rec.area() + " / P: " + Rec.perimetro());    
  println("Círculo = A: " + Cir.area() + " / P: " + Cir.perimetro()); 
  println("Pentágono = A: " + Pen.area() + " / P: " + Pen.perimetro()); 
  println("Hexágono = A: " + Hex.area() + " / P: " + Hex.perimetro()); 
  println("Heptágono = A: " + Hep.area() + " / P: " + Hep.perimetro());
  println("Octágono = A: " + Oct.area() + " / P: " + Oct.perimetro());
  println(" ");
 
  pushMatrix();
  fill(180,200,0);
  translate(width*0.14, height*0.3);
  rotate(frameCount / -100.0);
  polygon(0, 0, 40, 3);              // Triangulo
  popMatrix(); 
  
  pushMatrix();
  fill(100,100,200);
  translate(width*0.39, height*0.3);
  rotate(frameCount / -100.0);
  polygon(0, 0, 40, 4);              // Cuadrado
  popMatrix(); 
  
  pushMatrix();
  fill(10,190,0);
  translate(width*0.61, height*0.3);
  rotate(frameCount / -100.0);
  rect(0, 0, 60, 30);               // Rectangulo
  popMatrix(); 
  
  pushMatrix();
  fill(180,0,80);
  translate(width*0.86, height*0.3);
  rotate(frameCount / -100.0);
  ellipseMode (CORNER);
  ellipse(0, 0, 80, 80);            // Círculo
  popMatrix(); 
  
  pushMatrix();
  fill(200,50,0);
  translate(width*0.14, height*0.7);
  rotate(frameCount / -100.0);
  polygon(0, 0, 40, 5);             // Pentagono
  popMatrix();  
  
  pushMatrix();
  fill(0,180,180);
  translate(width*0.39, height*0.7);
  rotate(frameCount / -100.0);
  polygon(0, 0, 40, 6);             // Hexagono
  popMatrix();
  
  pushMatrix();
  fill(100,10,40);
  translate(width*0.61, height*0.7);
  rotate(frameCount / -100.0);
  polygon(0, 0, 40, 7);             // Heptagono
  popMatrix();
  
  pushMatrix();
  fill(150,10,170);
  translate(width*0.86, height*0.7);
  rotate(frameCount / -100.0);
  polygon(0, 0,40, 8);              // Octagono
  popMatrix();
}


interface Figura{
  float perimetro();
  float area();   
}

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

  void polygon(float x, float y, float apotema, int nlados) {
  float angulo = TWO_PI / nlados;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angulo) {
    float sx = x + cos(a) * apotema;
    float sy = y + sin(a) * apotema;
    vertex(sx,sy);
  }
  endShape(CLOSE);
 } 
 