abstract class Monkeys{
  private int cost;
  private int sell;
  private int size;
  private int v;
  private boolean att;
  private int strength;
  private int radius;
  private PVector pos;
  private boolean isSelected;
  private PImage sprite;
  private boolean displayRad;
  private int timer;
  private Bloons bloon;
  private Dart d;
  public abstract void attack(Bloons b);
  public abstract void upgrade();
  public void move(){
    if (isSelected) {
      pos = new PVector(mouseX,mouseY);
    }
  }
  public float getRad() {
    return radius;
  }
  public PVector getPos() {
    return pos;
  }
  public boolean isInRad(Bloons b){
    return (b.getPos().dist(this.pos) < this.radius);
  }
  public Bloons getBlon(){
    return bloon;
  }
  public void setAtt(){
    att = false;
  }
  public void click(){
  }
  public void display(){
  }
  public void displayRad(){
  }
  public void isIn(int x, int y){
  }
  public boolean getDisplayRad(){
    return false;
  }
  public void changeDisplayRad(){
  }
  public boolean getAtt(){
    return false;
  }
  public PVector getBloon(){
    return bloon.getPos();
  }
  public Dart getDart(){
    return d;
  }
  public int sell(){
    return -1;
  }
  public int buy(){
    return -1;
  }
  public void setSelect() {
    isSelected = !isSelected;
  }
}
