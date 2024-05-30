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
  public abstract void attack();
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
