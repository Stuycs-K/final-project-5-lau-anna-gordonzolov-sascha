abstract class Monkeys{
  private int cost;
  private int sell;
  private int size;
  private int v;
  private int strength;
  private int radius;
  private PVector pos;
  private boolean isSelected;
  private PImage sprite;
  private boolean displayRad;
  public abstract void attack(Bloons b);
  public abstract void upgrade();
  public void move(){
    if (isSelected) {
      pos = new PVector(mouseX,mouseY);
    }
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
