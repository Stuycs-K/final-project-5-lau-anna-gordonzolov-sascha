PImage p;
Map map;
Bloons balloon;
ArrayList<Block> turningpt;
ArrayList<Bloons> balloons;
ArrayList<Monkeys> monkeys;
ArrayList<Round> rounds;
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
  p = loadImage("map.png");
  map = new Map(p);
  turningpt = map.getTurns();
  rounds = new ArrayList<Round>();
  balloons = new ArrayList<Bloons>();
  monkeys = new ArrayList<Monkeys>();
  int w = p.width;
  int h = p.height;
  size(826, 532);
  fill(0, 0, 0);
  textSize(36);
  map.display();
  Bloons balloon = new Bloons(2,map);
  balloon.display();
  balloon.levelDown();
  balloon.display();
  Monkeys mon = new DartMonkey(309, 269, map);
  monkeys.add(mon);
  mon = new TackShooter(225, 349, map);
  monkeys.add(mon);
  Round one = new Round(1, map);
  rounds.add(one);
  /*balloon = new Bloons(4,map);
  balloons.add(balloon);
  balloon = new Bloons(3,map);
  balloons.add(balloon);
  balloon = new Bloons(2,map);
  balloons.add(balloon);
  balloon = new Bloons(1,map);
  balloons.add(balloon);*/
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
        if (m.type() == 1) {
          m.getDart().fly(m, m.getBlon());
        }
        else if (m.type() == 2) {
          m.getDart(0).fly(m.getBlon(),m,0, m.getDart(0).getogX(), m.getDart(0).getogY());
          m.getDart(1).fly(m.getBlon(),m,1, m.getDart(1).getogX(), m.getDart(1).getogY());
          m.getDart(2).fly(m.getBlon(),m,2, m.getDart(2).getogX(), m.getDart(2).getogY());
          m.getDart(3).fly(m.getBlon(),m,3, m.getDart(3).getogX(), m.getDart(3).getogY());
          m.getDart(4).fly(m.getBlon(),m,4, m.getDart(4).getogX(), m.getDart(4).getogY());
          m.getDart(5).fly(m.getBlon(),m,5, m.getDart(5).getogX(), m.getDart(5).getogY());
          m.getDart(6).fly(m.getBlon(),m,6, m.getDart(6).getogX(), m.getDart(6).getogY());
          m.getDart(7).fly(m.getBlon(),m,7, m.getDart(7).getogX(), m.getDart(7).getogY());
          m.display();
        }
      }
    }
  }
  if (rounds.get(0).getSize() > 0){
    rounds.get(0).play();
  }
  /*for (Bloons b: balloons) {
    if (b.exists){
      b.move();
      b.display();
    }
  }*/
  
}

void moveBloon() {
}
