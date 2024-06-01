public class Bloons{
  int level;
  float velo; 
  int value;
  boolean exists;
  Block curr;
  Block next;
  PVector pos;
  PImage balloon;
  Map m;
  LinkedList<Block> path = map.getPath();
  int pathBlock;
  int turns;
  //in BTD, call this with (0,205);
  public Bloons(int level, Map map){
    exists = true;
    int pathBlock = 0;
    turns = 0;
    if (level > 0 && level < 5) {
      this.level = level;
    }
    if (level == 4) {
      balloon = loadImage("yellow.png");
      velo = 4;
      value = 20;
    }
    else if (level == 3) {
      balloon = loadImage("green.png");
      velo = 3.5;
      value = 15;
    }
    else if (level == 2) {
      balloon = loadImage("blue.png");
      velo = 3;
      value = 10;
    }
    else {
      balloon = loadImage("red.png");
      velo = 2.5;
      value = 5;
    }
    m = map;
    pos = new PVector(0, 204);
    curr = path.get(pathBlock);
    next = path.get(pathBlock+1);
  }
  public Block getCurr(){
    return curr;
  }
  public Block getNext(){
    return next;
  }
  public void display() {
    //this should be fine? no clue why there are afterimages
    image(balloon,pos.x,pos.y);
  }
  public int getValue() {
    return value;
  }
  public PVector getPos(){
    return pos;
  }
  public void move(){
    if (turns < 12) {
      PVector dir = PVector.sub(turningpt.get(turns).getPos(),pos);
      dir = dir.div(dir.mag());
      pos.x += dir.x * velo;
      pos.y += dir.y * velo;
      if (around(pos.x,turningpt.get(turns).getX()) && around(pos.y,turningpt.get(turns).getY())) {
        turns++;
      }
    }
    else if (pos.y <= 550){
      pos.y += velo;
    }
  }
  public boolean around(float n1, float n2) {
    return Math.abs(n1-n2) <= 4;
  }
  public void level(int l){
    level = l;
    if (level == 4) {
      balloon = loadImage("yellow.png");
      velo = 4;
      value = 20;
    }
    else if (level == 3) {
      balloon = loadImage("green.png");
      velo = 3.5;
      value = 15;
    }
    else if (level == 2) {
      balloon = loadImage("blue.png");
      velo = 3;
      value = 10;
    }
    else if (level == 0){
      exists = false;
      pos.x = 1000;
      pos.y = 1000;
    }
    else {
      balloon = loadImage("red.png");
      velo = 2.5;
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
  public float getX() {
    return pos.x;
  }
  public float getY() {
    return pos.y;
  }
  public int getLevel() {
    return level;
  }
}
