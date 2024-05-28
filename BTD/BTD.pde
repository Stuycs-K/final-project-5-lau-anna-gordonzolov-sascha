PImage m;
Map map;
Bloons balloon;
void keyPressed() {
}
void setup() {
  m = loadImage("map.png");
  map = new Map(m);
  int w = m.width;
  int h = m.height;
  size(826, 532);
  fill(0, 0, 0);
  textSize(36);
  text("" + w + " " + h, 200, 200);
  map.display();
  map.displayPath();
  //path starts at 0,205
  //each tile is 40 w and h
}
void draw() {
  balloon = new Bloons(1,map,0,205);
  balloon.display();
  balloon.move();
  balloon.display();
}
