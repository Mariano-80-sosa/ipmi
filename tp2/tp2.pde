//VARIABLES

float Alpha, pos, multiplo1, multiplo2, randomR, randomG, randomB;
PImage Imag1, Imag2, Imag3, Imag4, Imag5, Imag6, Imag7;
int movimiento = 1, intervalo, imagActual;
String Text1, Text2, Text3, Text4, Text5, Text6, Text7;
//PFont nuevaFuente;
void setup() {
  size(640, 480);
  textSize(50);

  //ASIGNACION

  frameRate(30);
  //texto
  Text1 =("Mi amiga Nokotan\nes un ciervo");
  Text2 =("Introducción:\n Presenta a Torako Koshi,\n una estudiante de secundaria que aparenta ser modelo,\n pero oculta un pasado como delincuente.\n Su vida cambia cuando rescata a Noko Shikanoko,\n una chica-ciervo atrapada en cables eléctricos.");
  Text3 =("Encuentro inesperado:\n Noko, la chica-ciervo,\n revela que puede oler el pasado de Torako y decide no dejarla en paz.\n Esto amenaza con exponer el secreto de Torako");
  Text4 =("Club de los Ciervos:\n Noko funda un club en la escuela para cuidar ciervos,\n lo que genera situaciones cómicas y absurdas.\n Torako se ve arrastrada a estas travesuras");
  Text5 =("Conflictos y secretos:\n La relación entre Torako\n y Noko se complica cuando el pasado de Torako como\n La Tigre de Hino comienza a salir a la luz.");
  Text6 =("Momentos cómicos y emotivos:\n La serie mezcla humor absurdo con momentos de amistad y superación personal,\n mostrando cómo Torako enfrenta sus miedos\n y acepta su verdadera identidad");
  Text7 =("Conclusión:\n La historia culmina con Torako y Noko formando un vínculo especial,\n mientras el club de los ciervos\n se convierte en un espacio único para todos");
 
  //imagenes
  Imag1 =loadImage ("Titulo.png");
  Imag2 =loadImage ("Shikamoco.png");
  Imag3 =loadImage ("ShikanokoJOJO.jpeg");
  Imag4 =loadImage ("shika_ninja.png");
  Imag5 =loadImage ("Shikanoko president.png");
  Imag6 =loadImage ("ShikaBoss.jpeg");
  Imag7 =loadImage ("ShikaFamili.jpeg");
  //Otros

  pos=0;

  multiplo1=1.5;
  multiplo2=2.5;
  intervalo = 440;
  imagActual = 0;
}
void draw() {
  randomR= random(0, 240);
  randomG= random(0, 200);
  randomB= random(100, 255);
  background(100);
  // USO

  movimiento = (frameCount/2);

  if (frameCount % intervalo == 0) {
    imagActual = (imagActual + 1) % 8;
  }

  //imagen1
  if (imagActual ==0) {  
    image (Imag1, 0, 0, 640, 480);
  fill(0);
    text(Text1, pos+500-movimiento, 175);
  }

  //2 funciona
  else if (imagActual ==1) {
    image (Imag2, 0, 0, 640, 480);
    fill(0);
    text(Text2, 0, 640-movimiento*multiplo1, 640, 480);
  }

  //3 funciona
  else if (imagActual ==2) {
    image (Imag3, 0, 0, 640, 480);

    fill(255);
    text(Text3, pos-1200+movimiento*multiplo1, 0, 640, 480);
  }

  //4 funciona
  else if (imagActual ==3) {

    image (Imag4, 0, 0, 640, 480);
    fill(0);
    text(Text4, 0, 1240-movimiento*2, 640, 480);
  }

  //5 sin texto
  else if (imagActual ==4) {

    image (Imag5, 0, 0, 640, 480);
    fill(randomR, randomG, randomB);
    text(Text5, 0, 0, 640, 480);
  }

  //6 funciona mal
  else if (imagActual ==5) {
    image(Imag6, 0, 0, 640, 480);
    fill(randomR, randomG, randomB);
    text(Text2, 0, 640-movimiento*multiplo1, 640, 480);
  }

  //7 funciona mal
  else if (imagActual ==6) {
    image (Imag7, 0, 0, 640, 480);
    fill(randomR, randomG, randomB);
    text(Text7, pos+500-movimiento, 175);
  }
}
void mouseClicked() {
  if (imagActual ==7) {

    fill(25, 100, 0);
    if  (mouseX>200 && mouseX <400 && mouseY>200 && mouseY<400);
    {
      fill(255, 0, 0);
      rect(200, 200, 400, 400);
      movimiento = 0;
      pos=0;
      imagActual=0;
    }
  }
}
