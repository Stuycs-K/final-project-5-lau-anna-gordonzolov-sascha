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
  public void changeUpgrade() {
  }
  public void changeSel() {
    isSelected = !isSelected;
  }
  public void dartRotate(){
  }
  public boolean getUpgrade() {
    return true;
  }
  public float getRad() {
    return radius/2;
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
  public boolean isIn(int x, int y) {
    return true;
  }
  public void addRad(int n) {
  }
  public void click(){
  }
  public void display(){
  }
  public void displayRad(){
  }
  public void displayRadRed(){
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
  public String box(){
    return ("");
  }
  public void setCor(float x, float y){
  }
  public Dart getDart(int n){
    return d;
  }
  public int getCost() {
    return cost;
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
  public int type() {
    return 0;
  }
}
