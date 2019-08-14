float xpos;
float ypos;
float stoerelse;
float hoejreOeje;
float venstreOeje;
float mund;
float venstre;
float hoejre;

void setup() {
  size(2000,1000);
  
  
  xpos = 510;
  ypos = 75;
  stoerelse = 5;
}

void draw() {
xpos*= 2;
  ypos*= 2;
  stoerelse*= 1;
  hoejreOeje*=0.2;
  venstreOeje*=0.189;
  mund*=0.5;
  venstre*=1.5;
  hoejre*=1.5;
  
  clear();
    background(255, 204, 0);
    
//Ansigt
circle(xpos, ypos+75, stoerelse+245);
 //Mund
  circle(xpos, ypos+75, mund+95);
  //Højre øje
  circle(xpos+40, hoejre+120.5,  hoejreOeje+18);
  //Venstre øje
  circle(xpos-30, venstre+120.5,  venstreOeje+25);


  
  
}
