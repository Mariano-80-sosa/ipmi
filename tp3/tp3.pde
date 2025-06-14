//https://youtu.be/QkbrbFT2Wnk
//variables
PImage referencia;
int filas, columnas;
float tam, desfase, x, y, desplazamiento;

void setup() {
  frameRate(30);
  size(800, 400);
  filas = 23;    
  columnas = 23;  
  referencia = loadImage("F_16.jpg");
  tam = width / columnas; 
}
float calcularDesplazamiento(int i) {//funcion CON retorno de valor
  if (mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 400) {
    return (mouseX - 400) * 0.05 * (i % 2 == 0 ? 4 : -4);
  } else {
    return 0;
  }
}

void Patron(){//funcion SIN retorno de valor
  for (int i = 0; i < filas; i++) {
   image(referencia, 0, 0, 400, 400);
    for (int j = 0; j < columnas; j++) {
      desfase = (i % 2.5) * (tam * -0.552);
      x = j * tam + desfase + 400;
      y = i * tam;
   if (desplazamiento != 0) {
        float xHueco = x - desplazamiento; // Posición opuesta al desplazamiento
        pushMatrix();
        translate(xHueco, y);
        rectMode(CENTER);
        fill(((i + j) % 2 == 0 ? 255 : 0)); // Invertimos el color para mantener el patrón
        stroke(100);
        strokeWeight(2);
        rect(0, 0, tam, tam);
        popMatrix();
      }  
    if (mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 400 ) {
        desplazamiento = (mouseX - 400) * 0.05 * (i % 2 == 0 ? 4 : -4);
      }     
      pushMatrix();
      translate(x + desplazamiento, y -desplazamiento);
      rectMode(CENTER);
      fill(((i + j) % 2 == 0 ? 0 : 255));
      stroke(100);
      strokeWeight(2);
      rect(0, 0, tam, tam);
      popMatrix();
       }
  }}
    void draw(){
      background(0);
      Patron();
    }
