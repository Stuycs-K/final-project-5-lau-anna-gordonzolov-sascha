public class Bloons{
  int level;
  int velo; 
  int value;
  Block curr;
  Block next;
  PVector pos;
  PImage balloon;
  public Bloons(int level){
    if (level > 0 && level < 5) {
      this.level = level;
    }
    if (level == 4) {
      balloon = loadImage("yellow.png");
      velo = 10;
    }
    else if (level == 3) {
      balloon = loadImage("green.png");
      velo = 7;
    }
    else if (level == 2) {
      balloon = loadImage("blue.png");
      velo = 3;
    }
    else {
      balloon = loadImage("red.png");
      velo = 1;
    }
  }
  public Block getCurr(){
    return curr;
  }
  public Block getNext(){
    return next;
  }
  public void move(){
  }
  public void levelDown(){
    level --; 
  }
  public boolean atEnd(){
    return false;
  }
}
