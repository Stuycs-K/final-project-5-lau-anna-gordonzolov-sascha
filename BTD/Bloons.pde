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
  private int timer;
  PImage[] sprites = new PImage[]{loadImage("red.png"), loadImage("blue.png"), loadImage("green.png"), loadImage("yellow.png"), loadImage("pink.png")};
  //in BTD, call this with (0,205);
  public Bloons(int level, Map map){
    exists = false;
    int pathBlock = 0;
    turns = 0;
    if (level > 0 && level < 5) {
      this.level = level;
    }
    if (level <= 4){
      balloon = sprites[level-1];
    }
    else{
      balloon = sprites[4];
    }
    velo = 2.5 + 0.5 * (level - 1);
    value = level;
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
    return value; //each pop is $1
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
    if (level >= 1) {
      balloon = sprites[level-1];
      velo = 2.5 + 0.5 * (level - 1);
      value = level;
      m = map;
    }
    else {
      exists = false;
      pos.x = 1000;
      pos.y = 1000;
    }
  }
  public void glueLevel(int l){
    level = l;
    if (level >= 1) {
      balloon = sprites[level-1];
      velo = (2.5 + 0.5 * (level - 1))*0.75;
      value = level;
      m = map;
    }
    else {
      exists = false;
      pos.x = 1000;
      pos.y = 1000;
    }
  }
  public void glue() {
    print("glued");
    velo *= 0.5;
    if (timer == 0) {
      glueLevelDown();
      timer = 50;
    }
    else {
      timer--;
    }
  }
  public void levelDown(){
    this.level(level - 1);
    //remove this balloon and replace it with a lower level at the same position
  }
  public void glueLevelDown() {
    this.glueLevel(level-1);
  }
  public void exist(){
    exists = true;
  }
  public boolean doesExist(){
    return exists;
  }
  public boolean atEnd(){
    return (pos.y > 532);
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
