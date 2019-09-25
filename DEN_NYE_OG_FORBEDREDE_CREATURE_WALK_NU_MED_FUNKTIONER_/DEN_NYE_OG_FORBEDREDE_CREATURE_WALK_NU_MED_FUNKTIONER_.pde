float xpos;
float ypos;
int trappe = 0;

void setup() {
  size(2000, 1000);


  xpos = 510;
  ypos = 75;
}

void draw() {
  clear();
  gangart();
  Krop(xpos-500, ypos-100);
  Krop(xpos, ypos);
  Krop(xpos+250, ypos+250);
  Krop(xpos+1000, ypos+500);
}

void Krop(float xin, float yin) {
  stroke(23);

  //Venstre øje
  circle(xin-100, yin-50, 100);
  circle(xin-100, yin-50, 50);

  //Højre øje
  circle(xin+100, yin-50, 100);
  circle(xin+100, yin-50, 50);

  //1st lag
  circle(xin, yin+75, 250);
  //Mund
  fill (126);
  circle(xin, yin+125, 50);
  //2nd lag
  circle(xin, yin+50, 100);
  circle(xin+0, yin+50, 150);
  circle(xin, yin+50, 100);
  circle(xin, yin+50, 50);
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
