float xpos;
float ypos;
float xpos2;
float ypos2;
int trappe = 0;
float s = 1;
float s2 = 1;
void setup() {
  size(2000, 1000);

  xpos2=1000;
  ypos2=1000;
  xpos = 10;
  ypos = 75;
}

void draw() {
  clear();
  gangart();
  s=s*1.00123;
  s2=s2*0.99;
  Krop(xpos2+500, ypos,s); 
  Krop(xpos2+400, ypos,s); 
  Krop(xpos2+250, ypos,s); 
  Krop(xpos2+750, ypos,s); 
  Krop(xpos2+600, ypos,s); 
  Krop(xpos+1000, ypos,s); 
  Krop(xpos+850, ypos,s2);
  Krop(xpos2+100, ypos,s2); 
  Krop(xpos+1200, ypos,s2); 
  Krop(xpos+1000, ypos,s2); 
  Krop(xpos+0, ypos,s2); 
}

void Krop(float xin, float yin, float s) {
  stroke(23);

  //Venstre øje
  circle(xin-100*s, yin-50*s, 100*s);
  circle(xin-100*s, yin-50*s, 50*s);

  //Højre øje
  circle(xin+100*s, yin-50*s, 100*s);
  circle(xin+100*s, yin-50*s, 50*s);

  //1st lag
  circle(xin, yin+75*s, 250*s);
  //Mund
  fill (126);
  circle(xin, yin+125*s, 50*s);
  //2nd lag
  circle(xin, yin+50*s, 100*s);
  circle(xin, yin+50*s, 150*s);
  circle(xin, yin+50*s, 100*s);
  circle(xin, yin+50*s, 50*s);
}
//Her har vi koden som bestemmer hvordan mine rotter bevæger sig
void gangart() {
  if (trappe == 0) {
    xpos+= 5;
    trappe = 1;
  } else {
    ypos +=5;
    trappe =0;
  }
  // Gang art
  delay(50);
}
//Bestemmer også hvordan de bevæger sig
void baglensGangart() {
  if (trappe == 0) {
    xpos2-= 10;
    trappe = 1;
  } else {
    ypos2 -=15;
    trappe =0;
  }
  // Gang art
  delay(50);
}
