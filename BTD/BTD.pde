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
  map.getPath();
  map.display();
  //path starts at 0,205
  //each tile is 40 w and h
}
