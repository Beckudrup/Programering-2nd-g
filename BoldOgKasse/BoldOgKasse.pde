float x=500;
float y=500;
float xSpeed=12;
float ySpeed =10;
float KasseX, KasseY, KasseSize =1000;
PImage img;

void setup() {
  size(1000, 1000);
  img =loadImage ("Gigaclaps.jpg");
} 

void draw() {
  KasseSize-=0.5;
  KasseY+=0.25;
  KasseX+=0.25;
  x=x+xSpeed;
  y=y+ySpeed;


  clear();
  
  //Flot anime baggrund (Ved godt vi ikke skriver i Java Script)
  background(img);


  //Firkant
  rect(KasseX, KasseY, KasseSize, KasseSize);

  //Bold
  ellipse(x, y, 16, 16);

  //Vend om XBund!
  if (x+10>=KasseX + KasseSize) {
    xSpeed=-12;
  }

  //Vend om YBUnd!
  if (y+10>=KasseY +KasseSize) {
    ySpeed=-10;
  }


  //Vend om YTop!
  if (y-10<=KasseX) {
    ySpeed=10;
  }

  //Vend om XTop!
  if (x-10<=KasseX) {
    xSpeed=12;
  }
  //KasseReset så den ikke bliver fanget i væggen
  if (KasseSize<=100) {
    KasseSize = 1000;
    KasseX=0;
    KasseY=0;
  }
}
