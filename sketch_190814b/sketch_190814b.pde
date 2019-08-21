float xpos;
float ypos;
int trappe = 0;



void setup() {
  size(2000, 1000);


  xpos = 510;
  ypos = 75;
}

void draw() {
  if (trappe == 0) {
    xpos+= 5;
    trappe = 1;
  } else {
    ypos +=5;
    trappe =0;
  }




  clear();
  background(255, 204, 0);

  stroke(23);

  //Venstre øje
  circle(xpos-100, ypos-50, 100);
  circle(xpos-100, ypos-50, 50);

  //Højre øje
  circle(xpos+100, ypos-50, 100);
  circle(xpos+100, ypos-50, 50);

  //1st lag
  circle(xpos, ypos+75, 250);
  //Mund
  fill (126);
  circle(xpos, ypos+125, 50);
  //2nd lag
  circle(xpos, ypos+50, 100);
  circle(xpos+0, ypos+50, 150);
  circle(xpos, ypos+50, 100);
  circle(xpos, ypos+50, 50);

  // Gang art
  delay(50);
}
