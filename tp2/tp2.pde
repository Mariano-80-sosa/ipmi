PImage Imag1, Imag2, Imag3, Imag4, Imag5, Imag6, Imag7;
public enum Estados{Estado1,Estado2,Estado3,Estado4,Estado5,Estado6,Estado7,Boton}
Estados estado;
int TiempoCambio, intervalo; // EstadoActual,  EstadosToales;
String Text1, Text2, Text3, Text4, Text5, Text6, Text7;

void setup() {
  size(640, 480);
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
  //otros
estado =Estados.Estado1;
  TiempoCambio= millis();
//EstadoActual=0;
  intervalo=5000;
}
void draw () {
  background(255);
  
  switch(estado){
  case Estado1:
  image (Imag1, 0, 0, 640, 480);
  fill(0);
  text(Text1, 500+frameCount, 175);
   break;
  case Estado2:
  image (Imag2, 0, 640-frameCount, 640, 480);
  fill(0);
  text(Text2, 0, 640, 650, 490);
   break;
  case Estado3:
    image (Imag3, 0, 0, 640, 480);
  fill(255);
  text(Text3, 0, 640, 490);
   break;
case Estado4:
  image (Imag4, 0, 0, 640, 490);
  fill(0);
  text(Text4, 0, 140, 640, 480);
   break;
case Estado5:
  image (Imag5, 0, 0, 640, 480);
  fill(0);
  text(Text5, 0, 0, 640, 490);
   break;
case Estado6:
  image(Imag6, 0, 0, 640, 480);
  fill(0);
  text(Text6, 0, 1340);
  break;
case Estado7:
  image (Imag7, 0, 0, 640, 480);
  fill(0);
  text(Text7, 600, 175);
  break;
case Boton:

    if  (mouseX>200 && mouseX <400 && mouseY>200 && mouseY<400);
  {
    fill(255, 0, 0);
    rect(200, 200, 400, 400);
  }
 break;
  }
         if (millis() - TiempoCambio > 5000) {  // Cambia cada 5 segundos
        TiempoCambio = millis();
        CambiarEstado();
    }

  }
