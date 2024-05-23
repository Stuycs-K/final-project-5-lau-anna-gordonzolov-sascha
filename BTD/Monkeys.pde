abstract class Monkeys{
  private int cost;
  private int sell;
  private int size;
  private int velo;
  private int str;
  private int rad;
  private PVector pos;
  private boolean isSelected;
  private PImage sprite;
  public abstract void attack();
  public abstract void upgrade();
  public void move(){
  }
  public void click(){
  }
  public int sell(){
    return -1;
  }
  public int buy(){
    return -1;
  }
}
