PImage Gaturro;
void setup()
{
size(800,400);

background(0,100,250);
fill(200);
rect(400,300,400,400);
rect(400,150,400,30);
fill(100);
rect(400,180,400,125);

Gaturro=loadImage("Gaturro.jpeg");
image(Gaturro,0,0,400,400);

fill(#00A000);
ellipse(600,360,250,60);
fill(#9B7E2D);

triangle(600,240,550,340,650,340);//piernas
rect(525,330,150,30);//pies

fill(#9B7E2D);

//orejas
triangle(540,50,515,80,550,80);
triangle(660,50,650,80,685,80);

rect(630,220,120,15);//brazo
rect(743,190,10,30,30);
rect(740,210,40,40,35);//mano

beginShape();
vertex(525,220);
vertex(525,240);
vertex(540,240);
vertex(540,250);
vertex(560,250);
vertex(560,220);
endShape();//brazo izquierdo
ellipse(600,249,100,90);//cuerpo


fill(#E6EA09);
rect(480,75,235,150,60);//cachetes

ellipse(600,249,90,45);//panza
//boca
fill(255);
rect(500,95,200,120,60);

ellipse(570,90,70,130);//ojos
ellipse(630,90,70,130);

fill(0);
//pupilas
ellipse(570,110,15,25);
ellipse(630,110,15,25);

//dientes
strokeWeight(2);
line(506,120,570,155);//1
line(500,165,700,165);//2
line(693,120,640,155);//3
line(510,197,560,165);//4
line(687,197,640,165);//5
line(600,125,600,215);
//bigotes
line(475,70,500,85);
//bezier(475,70,480,55,470,60,500,85);
line(467,85,490,95);
line(465,100,485,105);

line(715,70,695,85);
line(723,85,705,95);
line(725,100,710,105);
//detalles
line(535,335,535,360);
line(545,335,545,360);
line(655,335,655,360);
line(665,335,665,360);
line(600,345,600,295);
line(755,220,778,220);
line(755,230,778,230);
line(755,240,778,240);
strokeWeight(1);
line(540,240,550,230);

ellipse(575,140,65,39);
ellipse(625,140,65,39);
fill(#E6EA09);
noStroke();//mejillas
beginShape();
vertex(525,100);//1
vertex(550,150);//2
vertex(560,150);//3
vertex(535,90);//4
endShape();
beginShape();
vertex(665,90);//1
vertex(650,150);//2
vertex(655,150);//3
vertex(680,100);//4
endShape();
ellipse(575,165,90,90);
ellipse(625,165,90,90);//mejillas
fill(#F29AE8);
ellipse(600,125,10,10);

}


void draw(){
  
fill(#00A000);
triangle(600,345,545,368,650,368);
}
