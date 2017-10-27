float radio, nlados;
Figura Tri, Cua, Rec, Cir, Pen, Hex, Hep, Oct;

ArrayList <Figura> Figuras;

void setup(){
  size(800,400);
  rectMode(CENTER);
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
  polygon(0, 0, 40, 8);              // Octagono
  popMatrix();
}

interface Figura{
  float perimetro();
  float area();   
}



  void polygon(float x, float y, float radio, int nlados) {
  //float  area = PI*(radio*radio);
  float angulo = TWO_PI / nlados;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angulo) {
    float sx = x + cos(a) * radio;
    float sy = y + sin(a) * radio;
    vertex(sx,sy);
  }
  endShape(CLOSE);
 } 