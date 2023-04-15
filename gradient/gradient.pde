void gradient_half_circle(int x, int y, int w, color c1, color c2) {
  // draw the rectangular gradient layer
  PGraphics gradient = createGraphics(width, height);
  for (int i = 0; i<w; i++) {
    color c = lerpColor(c1, c2, (float) i/w);
    gradient.beginDraw();
    gradient.rectMode(CENTER);
    gradient.stroke(c);
    int line_y=height/2-w/2+i;
    gradient.line(width/2-w/2, line_y, width/2, line_y);
    gradient.endDraw();
  }
  // draw the half circle shape mask
  PGraphics arc_mask = createGraphics(width, height);
  arc_mask.beginDraw();
  arc_mask.ellipseMode(CENTER);
  arc_mask.arc(x, y, w, w, HALF_PI, PI+HALF_PI, CHORD);
  arc_mask.endDraw();
  // apply the mask and draw the half circle shape filled with the gradient color
  gradient.mask(arc_mask);
  image(gradient, 0, 0);
}
void setup() {
  size(500, 500);
  color c1 = color(#de1b24);
  color c2 = color(#6e0e13);
  gradient_half_circle(width/2, height/2, 200, c1, c2);
}
