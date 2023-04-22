float s = 1.0; //scale
void setup(){
  size(600,600);
}
void draw() {
  if (mousePressed == true) {
    pushMatrix();
    translate(mouseX,mouseY);
    scale(s);
    circle(0, 0, 100);
    circle(0+20, 0+20, 100);
    popMatrix();
  }
}
void keyPressed(){
  if(key == '1'){
    s = 0.5;
  }else if(key == '2'){
    s = 1.0;
  }
}
