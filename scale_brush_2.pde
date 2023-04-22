int mode = 1;
void setup() {
  size(600, 600);
}
void draw() {
  if (mousePressed == true) {
    if (mode == 1) {
      circle(mouseX, mouseY, 100);
      circle(mouseX+20, mouseY+20, 100);
    } else if (mode == 2) {
      circle(mouseX, mouseY, 50);
      circle(mouseX+10, mouseY+10, 50);
    }
  }
}
void keyPressed() {
  if (key == '1') {
    mode = 1;
  } else if (key == '2') {
    mode = 2;
  }
}
