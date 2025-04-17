PImage Gaturro;
void setup()
{
size(800,400);

background(0,120,200);
fill(200);
rect(400,300,800,400);

Gaturro=loadImage("Gaturro.jpeg");
image(Gaturro,0,0,400,400);
fill(#00A000);
ellipse(600,360,250,60);
fill(#9B7E2D);
triangle(600,240,550,340,650,340);//piernas
rect(525,330,150,30);//pies


rect(630,220,120,15);//brazo
rect(743,190,10,30,30);
rect(740,210,40,40,35);//mano
triangle(525,225,600,225,535,270);
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
ellipse(570,110,15,25);//ojos
ellipse(630,110,15,25);
strokeWeight(2);
line(506,120,570,155);//1
line(500,165,700,165);//2
line(693,120,640,155);//3
line(510,197,560,165);//4
line(687,197,640,165);//5
line(600,125,600,215);
fill(#E6EA09);
noStroke();

ellipse(575,165,90,90);
ellipse(625,165,90,90);
fill(#F29AE8);
ellipse(600,125,10,10);
}


void draw()
{


 
}
