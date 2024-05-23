public class Bloons{
  color col;
  int level;
  int velo; 
  int size;
  int value;
  PVector pos;
  public Bloons(int level){
    this.level = level;
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
