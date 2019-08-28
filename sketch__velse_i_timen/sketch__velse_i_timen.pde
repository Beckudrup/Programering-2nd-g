boolean a = false;
boolean b = false;
boolean c = false;
boolean d = false;
void setup() {
  size(222, 111);

}

void draw() {
 
if (mouseX > 0 && mouseX < 50 && mouseY > 0 && mouseY < 50 && mousePressed) {
 boolean a = true;
 if (a = true) {
      rect(0,0,50,50);
      fill(255,0,0);
    } 

}else{a = false;}

 if (mouseX > 50 && mouseX < 100 && mouseY > 0 && mouseY < 50 && mousePressed) { 
 boolean b = true;
 if (b = true) {
      rect(50,0,50,50);
      fill(255,0,0);
    } 

}else{b = false;}



 if (mouseX > 50 && mouseX < 100 && mouseY > 50 && mouseY < 100 && mousePressed) { 
 boolean c = true;
 if (c = true) {
      rect(50,50,50,50);
      fill(255,0,0);
    } 

}else{c = false;}



 if (mouseX > 0 && mouseX < 50 && mouseY > 50 && mouseY < 100 && mousePressed) { 
 boolean b = true;
 if (d = true) {
      rect(0,50,50,50);
      fill(255,0,0);
    } 

}else{d = false;}

}
