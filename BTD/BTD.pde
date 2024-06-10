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
boolean clicked;
Monkeys chosen;
void keyPressed() {
  if (key == 109){
    map.addMoney(100);
  }
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
}
void mouseClicked() {
  if (won || lost) {
    //rect(310,220,200,50,10);
    if (mouseX >= 310 && mouseX <= 510 && mouseY >= 220 && mouseY <= 270) {
      if (lost) {
        lost = !lost;
      }
      if (won) {
        won = !won;
      }
      reset();
    }
  }
  for (int i = 0; i < monkeys.size(); i++) {
    Monkeys m = monkeys.get(i);
    if (m.isIn(mouseX,mouseY)) {
      chosen = m;
      m.changeUpgrade();
      m.changeDisplayRad();
      clicked = !clicked;
    }
    else if (m.getUpgrade()) {
      //rect(660,300,156,100,10);
      if (mouseX >= 660 && mouseX <= 816 && mouseY >= 300 && mouseY <= 400) {
        if (map.getMoney() >= 150) {
          if (chosen.type() != 3) {
            m.addRad(15);
            m.addUpgrade();
            map.subMoney(150);
          }
          else {
            m.changeFreq();
            m.addUpgrade();
            map.subMoney(235);
          }
        }
        return;
      }
      //rect(660,190,156,100,10);
      else if (mouseX >= 660 && mouseX <= 816 && mouseY >= 190 && mouseY <= 290) {
        if (chosen.type() != 3) {
          map.addMoney((int) ((m.getCost() + m.countUpgrades() * 150) * 0.7));
        }
        else {
          map.addMoney((int) ((m.getCost() + m.countUpgrades() * 235) * 0.7));
        }
        monkeys.remove(m);
        clicked = !clicked;
        return;
      }
      else{
        m.changeUpgrade();
        m.changeDisplayRad();
        clicked = !clicked;
      }
    }
  }
  if (!selected) {
    if (mouseX >= 660 && mouseX <= 730 && mouseY >= 80 && mouseY <= 160) {
      if (map.getMoney() >= 200) {
        monk = new DartMonkey(mouseX, mouseY, map);
        monk.changeSel();
        monk.displayRad();
        selected = !selected;
      }
    }
    else if (mouseX >= 745 && mouseX <= 815 && mouseY >= 80 && mouseY <= 160) {
      if (map.getMoney() >= 230) {
        monk = new TackShooter(mouseX, mouseY, map);
        monk.displayRad();
        monk.changeSel();
        selected = !selected;
      }
    }
    else if (mouseX >= 660 && mouseX <= 730 && mouseY >= 190 && mouseY <= 270) {
      if (map.getMoney() >= 300) {
        monk = new SniperMonkey(mouseX, mouseY, map);
        monk.displayRad();
        monk.changeSel();
        selected = !selected;
      }
    }
    else if (mouseX >= 745 && mouseX <= 815 && mouseY >= 190 && mouseY <= 270) {
      if (map.getMoney() >= 800) {
        monk = new SuperMonkey(mouseX, mouseY, map);
        monk.displayRad();
        monk.changeSel();
        selected = !selected;
      }
    }
    //rect(660,290,70,80,10);
    else if (mouseX >= 660 && mouseX <= 730 && mouseY >= 290 && mouseY <= 370) {
      if (map.getMoney() >= 340) {
        monk = new NinjaMonkey(mouseX, mouseY, map);
        monk.displayRad();
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
        map.setDone(true);
      }
    }
  }
}
void reset() {
  start = false;
  selected = false;
  curr = 0;
  clicked = false;
  map = new Map(p);
  rounds = new ArrayList<Round>();
  monkeys = new ArrayList<Monkeys>();
  size(826, 532);
  for (int i = 1; i < 21; i++){
    Round temp = new Round(i, map);
    rounds.add(temp);
  }
}
void setup() {
  start = false;
  selected = false;
  curr = 0;
  clicked = false;
  p = loadImage("map.png");
  pop = new SoundFile(this, "pop.mp3");
  map = new Map(p);
  turningpt = map.getTurns();
  rounds = new ArrayList<Round>();
  monkeys = new ArrayList<Monkeys>();
  size(826, 532);
  for (int i = 1; i < 21; i++){
    Round temp = new Round(i, map);
    rounds.add(temp);
  }
}
void draw() {
  if (mouseX >= 660 && mouseX <= 730 && mouseY >= 80 && mouseY <= 160) {
    map.changeTitle("DART MONKEY",18);
  }
  else if (mouseX >= 745 && mouseX <= 815 && mouseY >= 80 && mouseY <= 160) {
    map.changeTitle("TACK SHOOTER",18);
  }
  else if (mouseX >= 660 && mouseX <= 730 && mouseY >= 180 && mouseY <= 260) {
    map.changeTitle("SNIPER MONKEY",17);
  }
  else if (mouseX >= 745 && mouseX <= 815 && mouseY >= 180 && mouseY <= 260) {
    map.changeTitle("SUPER MONKEY",17);
  }
  else if (mouseX >= 660 && mouseX <= 730 && mouseY >= 290 && mouseY >= 370) {
    map.changeTitle("NINJA MONKEY",17);
  }
  else {
    map.changeTitle("TOWERS",20);
  }
  if (map.getLives() == 0){
    lost = true;
  }
  if (map.getDone() && rounds.get(curr).nextRound()){
    map.addMoney(100 + curr + 1);
    map.setDone(false);
  }
  won = !lost && rounds.size() == curr + 1 && rounds.get(curr).nextRound();
  map.display();
  if (!won && !lost) {
    map.display();
  }
  if (start && !lost && !won){
    rounds.get(curr).play();  
  }
  if (monk != null) {
    monk.display();
    if (map.canPlace(mouseX, mouseY)){
      monk.displayRad();
    }
    else{
      monk.displayRadRed();
    }
    monk.move();
  }
  for (Monkeys m : monkeys) {
    m.display();
    if (m.getDisplayRad()) {
      m.displayRad();
    }
    for (ArrayList<Bloons> bb : rounds.get(curr).getIn()){
        for (int i = 0; i < bb.size(); i++){
          Bloons b = bb.get(i);
          if (b.doesExist()) {
            if (m.type() == 5 && b.isCamo() || !(m.type() == 5) && !b.isCamo() || (m.type() == 5) && !b.isCamo()) {
              if (m.isInRad(b) && !m.getAtt()) {
                m.attack(b);
                break;
              }
              if (m.type() == 3 && m.getHas() == rounds.get(curr).getIn().indexOf(bb) * 1000 + bb.indexOf(b)){
                m.attack(b);
              }
              if (m.getAtt()) {
                if (m.type() == 1 || m.type() == 4 || m.type() == 5) {
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
                } else if (m.type() == 3) {
                  if (m.getDart().fly(m, m.getBlon(),1)) {
                    pop.play();
                  }
                }
              }
            }
          }
        }
    }
  }
  if (won) {
    monkeys = new ArrayList<Monkeys>();
      PImage win = loadImage("victory.png");
      image(win,160,100);
      stroke(#556915);
      fill(#71E709);
      rect(310,220,200,50,10);
      textSize(30);
      fill(0,0,0);
      for(int x = -1; x < 2; x++){
          text("RESTART", 345+x,255);
          text("RESTART", 345,255+x);
      } 
      fill(255);
      text("RESTART", 345,255);
    }
    if (lost) {
      monkeys = new ArrayList<Monkeys>();
      PImage lose = loadImage("defeat.png");
      image(lose,250,10);
      stroke(#556915);
      fill(#71E709);
      rect(310,220,200,50,10);
      textSize(30);
      fill(0,0,0);
      for(int x = -1; x < 2; x++){
          text("RESTART", 345+x,255);
          text("RESTART", 345,255+x);
      } 
      fill(255);
      text("RESTART", 345,255);
    }
}
