void draw() {
}
void keyPressed() {
}
void setup() { 
  PImage m = loadImage("map.png");
  Map map = new Map(m);
  size(826,532);
  fill(0, 0, 0);
  textSize(36);
  map.display();
}
