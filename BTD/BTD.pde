PImage m;
Map map;
Bloons balloon;
ArrayList<Block> turningpt;
ArrayList<Bloons> balloons;
ArrayList<Monkeys> monkeys;
void keyPressed() {
}
void mouseClicked(){
  for (Monkeys m: monkeys){
    if (!m.getDisplayRad()){
      m.isIn(mouseX, mouseY);
    }
    else{
      m.changeDisplayRad();
    }
  }
}
void setup() {
  m = loadImage("map.png");
  map = new Map(m);
  turningpt = map.getTurns();
  balloons = new ArrayList<Bloons>();
  monkeys = new ArrayList<Monkeys>();
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
  DartMonkey mon = new DartMonkey(309, 269, map);
  monkeys.add(mon);
  mon = new DartMonkey(225, 185, map);
  monkeys.add(mon);
  balloon = new Bloons(4,map);
  balloons.add(balloon);
  balloon = new Bloons(3,map);
  balloons.add(balloon);
  balloon = new Bloons(2,map);
  balloons.add(balloon);
  balloon = new Bloons(1,map);
  balloons.add(balloon);
  //path starts at 0,205
  //each tile is 40 w and h
}
void draw() {
  map.display();
  for (Monkeys m : monkeys){
    m.display();
    if (m.getDisplayRad()){
      m.displayRad();
    }
    for (Bloons b: balloons) {
      if (m.isInRad(b) && !m.getAtt()) {
        m.attack(b);
        break;
      }
      if (m.getAtt()){
        m.getDart().fly(m, m.getBlon());
      }
    }
  }
  for (Bloons b: balloons) {
    if (b.exists){
      b.move();
      b.display();
    }
  }
}

void moveBloon() {
}
