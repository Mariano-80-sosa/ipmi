//VARIABLES
float   multiplo;
PImage Imag1, Imag2, Imag3, Imag4, Imag5, Imag6;
int movimiento, imagActual, intervalo, tiempoInicio, contarCuadros;
String Text1, Text2, Text3, Text4, Text5, Text6;
PFont miFuente;
void setup() {
  size(640, 480);
  textSize(40);
  //ASIGNACION
  frameRate(40);
  //texto
  Text1 =("Mi amiga Nokotan\nes un ciervo");
  Text2 =("Introducción:\n Presenta a Torako Koshi,\n una estudiante de secundaria que aparenta ser modelo,\n pero oculta un pasado como delincuente.\n Su vida cambia cuando rescata a Noko Shikanoko,\n una chica-ciervo atrapada en cables eléctricos.");
  Text3 =("Encuentro inesperado:\n Noko, la chica-ciervo,\n revela que puede oler el pasado de Torako y decide no dejarla en paz.\n Esto amenaza con exponer el secreto de Torako");
  Text4 =("Club de los Ciervos:\n Noko funda un club en la escuela para cuidar ciervos,\n lo que genera situaciones cómicas y absurdas.\n Torako se ve arrastrada a estas travesuras");
  Text5 =("Conflictos y secretos:\n La relación entre Torako\n y Noko se complica cuando el pasado de Torako como\n La Tigre de Hino comienza a salir a la luz.");
  Text6 =("Conclusión:\n La historia culmina con \n Torako y Noko formando un vínculo especial,\n mientras el club de los ciervos\n se convierte en un espacio único para todos");
  //imagenes
  Imag1 =loadImage ("Titulo.png");
  Imag2 =loadImage ("Shikamoco.png");
  Imag3 =loadImage ("ShikanokoJOJO.jpeg");
  Imag4 =loadImage ("shika_ninja.png");
  Imag5 =loadImage ("Shikanoko president.png");
  Imag6 =loadImage ("ShikaFamili.jpeg");

  tiempoInicio=millis();
  intervalo = 11000;
  imagActual = 1;
  contarCuadros = 0;
}
void draw() {
  background(100);
  // USO
  contarCuadros++;
  multiplo = 1.5;
  movimiento = (contarCuadros/2);// mueve lo que este aplicado movimiento la mitad de los fotogramas contados

  if (millis() - tiempoInicio > intervalo) {
    imagActual = (imagActual +1) % 7; // incrementa imagenactual, inicialmente vale cero, hasta 8
    tiempoInicio=millis();// reinecia el cronometro
  }
  // Pantalla 1
  if (imagActual ==1) {
    Pantalla1();
  }
  // Pantalla 2
  else if (imagActual ==2) {
    Pantalla2();
  }
  // Pantalla 3
  else if (imagActual ==3) {
    Pantalla3();
  }
  // Pantalla 4
  else if (imagActual ==4) {
    Pantalla4();
  }
  //Pantalla 5
  else if (imagActual ==5) {
    Pantalla5();
  }
  //Pantalla 6
  else if (imagActual ==6) {
    Pantalla6();
  }
}
void mouseClicked() {
  setup();
}
