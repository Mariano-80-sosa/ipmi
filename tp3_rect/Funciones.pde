void Patron() {//funcion SIN retorno de valor
  for (int i = 0; i < filas; i++) {//controla las filas

    for (int j = 0; j < columnas; j++) {//controla las columnas
      desfase = (i % 2.5) * (tam * -0.587);
      x = j * tam + desfase + 300;
      y = i * tam;

      desplazamiento = calcularDesplazamiento(i);
      pushMatrix();
      translate(x + desplazamiento, y);
      rectMode(CENTER);
      fill(((i + j) % 2 == 0 ? 0 : 255));//alterna los colores de los cuadrados
      stroke(100);
      strokeWeight(2);
      rect(0, 0, tam, tam);
      popMatrix();//ayuda a dibujar el patrón y permite el movimiento
    }
  }
}
float calcularDesplazamiento(int i) {//retorna el valor del desplazamiento
  if (mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 400) {
    return (mouseX - 400) * 0.05 * (i % 2 == 0 ? 4 : -4);
  } else {
    return 0;
  }
}
