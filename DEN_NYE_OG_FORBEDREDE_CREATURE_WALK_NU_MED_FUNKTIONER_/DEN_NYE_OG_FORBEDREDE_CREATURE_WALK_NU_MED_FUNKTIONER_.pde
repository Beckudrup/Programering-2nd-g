float xpos;
float ypos;
int trappe = 0;
float s = 1;
void setup() {
  size(2000, 1000);


  xpos = 510;
  ypos = 75;
}

void draw() {
  clear();
  gangart();
  s=s+0.01;
  Krop(xpos+500, ypos,s);
  Krop(xpos+100, ypos,s);
  Krop(xpos+250, ypos,s);
  Krop(xpos+750, ypos,s);
  Krop(xpos+500, ypos,s);
  Krop(xpos+1000, ypos,s);
  Krop(xpos+100, ypos,s);
  Krop(xpos+100, ypos,s);
  Krop(xpos+1000, ypos,s);
  Krop(xpos+1000, ypos,s);
  Krop(xpos+1000, ypos,s);
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
