public class Bloons{
  int level;
  float velo; 
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
      velo = 2.5;
      value = 20;
    }
    else if (level == 3) {
      balloon = loadImage("green.png");
      velo = 2;
      value = 15;
    }
    else if (level == 2) {
      balloon = loadImage("blue.png");
      velo = 1.5;
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
    //this should be fine? no clue why there are afterimages
    image(balloon,pos.x,pos.y);
  }
  public void move(int dir){
    //1: up, 2: left, 3: down, 4: right
    if (dir == 1) {
      pos.y -= velo;
    }
    else if (dir == 2) {
      pos.x -= velo;
    }
    else if (dir == 3) {
      pos.y += velo;
    }
    else if (dir == 4) {
      pos.x += velo;
    }
  }
  public void level(int l){
    level = l;
    if (level == 4) {
      balloon = loadImage("yellow.png");
      velo = 2.5;
      value = 20;
    }
    else if (level == 3) {
      balloon = loadImage("green.png");
      velo = 2;
      value = 15;
    }
    else if (level == 2) {
      balloon = loadImage("blue.png");
      velo = 1.5;
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
  public float getX() {
    return pos.x;
  }
  public float getY() {
    return pos.y;
  }
}
