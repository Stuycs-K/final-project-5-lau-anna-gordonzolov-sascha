PImage m;
Map map;
Bloons balloon;
ArrayList<Block> turningpt;
ArrayList<Bloons> balloons;
void keyPressed() {
}
void setup() {
  m = loadImage("map.png");
  map = new Map(m);
  turningpt = map.getTurns();
  balloons = new ArrayList<Bloons>();
  int w = m.width;
  int h = m.height;
  size(826, 532);
  fill(0, 0, 0);
  textSize(36);
  map.display();
  map.displayPath();
  Bloons balloon = new Bloons(2,map);
  balloon.display();
  balloon.levelDown();
  balloon.display();
  DartMonkey mon = new DartMonkey(225, 185);
  mon.display();
  mon.displayRad();
  //path starts at 0,205
  //each tile is 40 w and h
  balloon = new Bloons(4,map);
  balloons.add(balloon);
}
void draw() {
  map.display();
  for (Bloons b: balloons) {
    b.move(4);
    b.display();
  }
}

void moveBloon() {
}
