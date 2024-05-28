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
  map.displayPath();
  Bloons balloon = new Bloons(1,map,0,205);
  balloon.display();
  balloon.move();
  //path starts at 0,205
  //each tile is 40 w and h
}
