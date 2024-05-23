void draw() {
}
void keyPressed() {
}
void setup() { 
  PImage m = loadImage("map.png");
  Map map = new Map(m);
  int w = m.width;
  int h = m.height;
  size(826, 532);
  fill(0, 0, 0);
  textSize(36);
  text("" + w + " " + h, 200, 200);
  map.display();
}
