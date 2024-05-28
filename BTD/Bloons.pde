public class Bloons{
  int level;
  int velo; 
  int value;
  Block curr;
  Block next;
  PVector pos;
  PImage balloon;
  Map m;
  //in BTD, call this with (0,205);
  public Bloons(int level, Map map, int x, int y){
    if (level > 0 && level < 5) {
      this.level = level;
    }
    if (level == 4) {
      balloon = loadImage("yellow.png");
      velo = 10;
      value = 20;
    }
    else if (level == 3) {
      balloon = loadImage("green.png");
      velo = 7;
      value = 15;
    }
    else if (level == 2) {
      balloon = loadImage("blue.png");
      velo = 3;
      value = 10;
    }
    else {
      balloon = loadImage("red.png");
      velo = 1;
      value = 5;
    }
    m = map;
    pos = new PVector(x,y);
  }
  public Block getCurr(){
    return curr;
  }
  public Block getNext(){
    return next;
  }
  public void display() {
    image(balloon,pos.x,pos.y);
  }
  public void move(){
    ArrayList<Block> turns = m.getTurns();
    float x = turns.get(0).getX();
    while (pos.x < x) {
      pos = new PVector(pos.x + velo,pos.y);
    }
    float y = turns.get(1).getY();
    while (pos.y > y) {
      pos = new PVector(pos.x, pos.y-velo);
    }
    x = turns.get(2).getX();
    while (pos.x > x) {
      pos = new PVector(pos.x-velo,pos.y);
    }
    y = turns.get(3).getY();
    while (pos.y < y) {
      pos = new PVector(pos.x,pos.y+velo);
    }
    x = turns.get(4).getX();
    while (pos.x > x) {
      pos = new PVector(pos.x-velo,pos.y);
    }
    y = turns.get(5).getY();
    while (pos.y > y) {
      pos = new PVector(pos.x, pos.y-velo);
    }
    x = turns.get(6).getX();
    while (pos.x < x) {
      pos = new PVector(pos.x+velo,pos.y);
    }
    y = turns.get(7).getY();
    while (pos.y > y) {
      pos = new PVector(pos.x, pos.y-velo);
    }
    x = turns.get(8).getX();
    while (pos.x < x) {
      pos = new PVector(pos.x+velo,pos.y);
    }
    y = turns.get(9).getY();
    while (pos.y < y) {
      pos = new PVector(pos.x,pos.y+velo);
    }
    x = turns.get(10).getX();
    while (pos.x > x) {
      pos = new PVector(pos.x-velo,pos.y);
    }
    y = turns.get(11).getY();
    while (pos.y < y+100) {
      pos = new PVector(pos.x,pos.y+velo);
    }
    System.out.println(turns);
  }
  public void level(int l){
    level = l;
    if (level == 4) {
      balloon = loadImage("yellow.png");
      velo = 10;
      value = 20;
    }
    else if (level == 3) {
      balloon = loadImage("green.png");
      velo = 7;
      value = 15;
    }
    else if (level == 2) {
      balloon = loadImage("blue.png");
      velo = 3;
      value = 10;
    }
    else {
      balloon = loadImage("red.png");
      velo = 1;
      value = 5;
    }
  }
  public void levelDown(){
    this.level(level - 1);
    //remove this balloon and replace it with a lower level at the same position
  }
  public boolean atEnd(){
    return false;
  }
}
