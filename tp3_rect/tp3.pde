//VARIABLES
//VIDEO:https://youtu.be/lba48EPsc6s
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

void draw() {
  background(0);
  Patron();
  image(referencia, 0, 0, 400, 400);
  println(desplazamiento);
}
