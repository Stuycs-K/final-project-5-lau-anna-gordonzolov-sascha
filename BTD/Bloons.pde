public class Bloons{
  int level;
  float velo; 
  int value;
  Block curr;
  Block next;
  PVector pos;
  PImage balloon;
  Map m;
  LinkedList<Block> path = map.getPath();
  int pathBlock;
  //in BTD, call this with (0,205);
  public Bloons(int level, Map map){
    int pathBlock = 0;
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
    pos = new PVector(0, 205);
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
  public void move(){
    //1: up, 2: left, 3: down, 4: right
    if (pos.x % 41 >= 38 || pos.y%41 >= 35) {
      println("bi");
      curr = next;
      next = path.get(pathBlock+2);
      pathBlock++;
    }
    if (next.getX() > pos.x) {
      println(pos.x%41 + " " + next.getX() + " " + pos.x);
      pos.x += velo;
    }
    else if (next.getY() < pos.y) {
      println(pos.x%41 + " " + next.getX() + " " + pos.x);
      pos.y -= velo;
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
