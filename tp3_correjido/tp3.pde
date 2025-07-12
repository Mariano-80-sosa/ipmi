//VARIABLES
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
void draw() {
  background(0);
  Patron();
}
