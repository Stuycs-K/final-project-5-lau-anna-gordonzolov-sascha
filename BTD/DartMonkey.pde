class DartMonkey extends Monkeys{
  private int cost;
  private int sell;
  private int size;
  private int v;
  private int strength;
  private int radius;
  private PVector pos;
  private boolean isSelected;
  private PImage sprite;
  public DartMonkey(int x, int y){
    sprite = loadImage("DartMonkey.png");
    pos = new PVector(x,y);
  }
  public void display() {
    image(sprite,pos.x,pos.y);
  }
  public void attack(){
  }
  public void upgrade(){
  }
}
