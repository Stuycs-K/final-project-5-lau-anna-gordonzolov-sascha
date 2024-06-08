import processing.sound.*;
SoundFile pop;
PImage p;
Map map;
Bloons balloon;
boolean start;
ArrayList<Block> turningpt;
//ArrayList<Bloons> balloons;
ArrayList<Monkeys> monkeys;
ArrayList<Round> rounds;
int curr;
boolean won = false;
boolean lost = false;
Monkeys monk;
boolean selected;
boolean upgraded;
void keyPressed() {
  if (key == 10) {
    if (!start){
      start = true;
    }
    else{
      if (curr + 1 >= rounds.size()){
        for (ArrayList<Bloons> bb : rounds.get(curr).getIn()){
          for (Bloons b : bb){
             b.level(0);
          }
        }
        won = true;
      }
      else{
        for (ArrayList<Bloons> bb : rounds.get(curr).getIn()){
          for (Bloons b : bb){
             b.level(0);
          }
        }
        curr ++;
      }
    }
  }
  if (key == 118) {
    won = true;
  }
  if (key == 108) {
    map.minus(1);
  }
}
void mouseClicked() {
  for (Monkeys m : monkeys) {
    if (m.isIn(mouseX,mouseY)) {
      m.changeUpgrade();
      m.changeDisplayRad();
      upgraded = !upgraded;
    }
    if (m.getUpgrade()) {
    //rect(660,300,156,100,10);
    if (mouseX >= 660 && mouseX <= 816 && mouseY >= 300 && mouseY <= 400) {
      m.addRad(15);
      map.subMoney(150);
    }
  }
  }
  if (!selected) {
    if (mouseX >= 660 && mouseX <= 730 && mouseY >= 110 && mouseY <= 170) {
      if (map.getMoney() >= 200) {
        monk = new DartMonkey(mouseX, mouseY, map);
        monk.changeSel();
        selected = !selected;
      }
    }
    else if (mouseX >= 745 && mouseX <= 815 && mouseY >= 110 && mouseY <= 170) {
      if (map.getMoney() >= 230) {
        monk = new TackShooter(mouseX, mouseY, map);
        monk.changeSel();
        selected = !selected;
      }
    }
  }
  else if (selected && map.canPlace(mouseX, mouseY)) {
    monk.setCor(mouseX, mouseY);
    map.subMoney(monk.getCost());
    monk.changeSel();
    monkeys.add(monk);
    monk = null;
    selected = !selected;
  }
  //rect(660,410,156,100,10);
  if (mouseX >= 660 && mouseX <= 816 && mouseY >= 410 && mouseY <= 510) {
    if (!start){
      start = true;
    }
    else{
      if (rounds.get(curr).nextRound()) {
        curr++;
      }
    }
  }
}
void setup() {
  start = false;
  selected = false;
  curr = 0;
  upgraded = false;
  p = loadImage("map.png");
  pop = new SoundFile(this, "pop.mp3");
  map = new Map(p);
  turningpt = map.getTurns();
  rounds = new ArrayList<Round>();
  //balloons = new ArrayList<Bloons>();
  monkeys = new ArrayList<Monkeys>();
  size(826, 532);
  fill(0, 0, 0);
  textSize(36);
  map.display();
  Bloons balloon = new Bloons(2, map);
  balloon.display();
  balloon.levelDown();
  balloon.display();
  for (int i = 1; i < 21; i++){
    Round temp = new Round(i, map);
    rounds.add(temp);
  }
}
void draw() {
  if (mouseX >= 660 && mouseX <= 730 && mouseY >= 110 && mouseY <= 170) {
    map.changeTitle("DART MONKEY",18);
  }
  else if (mouseX >= 745 && mouseX <= 815 && mouseY >= 110 && mouseY <= 170) {
    map.changeTitle("TACK SHOOTER",18);
  }
  if (map.getLives() == 0){
    lost = true;
  }
  won = !lost && rounds.size() == curr + 1 && rounds.get(curr).nextRound();
  map.display();
  if (!won && !lost) {
    map.display();
  }
  else {
    if (won) {
      PImage win = loadImage("victory.png");
      image(win,160,100);
    }
    if (lost) {
      map.noLives();
      PImage lose = loadImage("defeat.png");
      image(lose,250,10);
    }
  }
  if (start && !lost && !won){
    rounds.get(curr).play();  
  }
  if (monk != null) {
    monk.display();
    monk.move();
  }
  for (Monkeys m : monkeys) {
    m.display();
    if (m.getDisplayRad()) {
      m.displayRad();
    }
    for (ArrayList<Bloons> bb : rounds.get(curr).getIn()){
        for (Bloons b : bb){
          if (b.doesExist()) {
            if (m.isInRad(b) && !m.getAtt()) {
              m.attack(b);
              break;
            }
            if (m.getAtt()) {
              if (m.type() == 1) {
                if (m.getDart().fly(m, m.getBlon())) {
                  pop.play();
                }
              } else if (m.type() == 2) {
                if (m.getDart(0).fly(m.getBlon(), m, 0, m.getDart(0).getogX(), m.getDart(0).getogY()) ||
                m.getDart(1).fly(m.getBlon(), m, 1, m.getDart(1).getogX(), m.getDart(1).getogY())||
                m.getDart(2).fly(m.getBlon(), m, 2, m.getDart(2).getogX(), m.getDart(2).getogY())||
                m.getDart(3).fly(m.getBlon(), m, 3, m.getDart(3).getogX(), m.getDart(3).getogY())||
                m.getDart(4).fly(m.getBlon(), m, 4, m.getDart(4).getogX(), m.getDart(4).getogY())||
                m.getDart(5).fly(m.getBlon(), m, 5, m.getDart(5).getogX(), m.getDart(5).getogY())||
                m.getDart(6).fly(m.getBlon(), m, 6, m.getDart(6).getogX(), m.getDart(6).getogY())||
                m.getDart(7).fly(m.getBlon(), m, 7, m.getDart(7).getogX(), m.getDart(7).getogY())) {
                  pop.play();
                }
                m.display();
              }
            }
          }
        }
    }
  }
}

void moveBloon() {
}
