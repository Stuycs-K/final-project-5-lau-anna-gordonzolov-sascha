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
    isSelected = false;
    radius = 200;
  }
  public void display() {
    image(sprite,pos.x - 21.5,pos.y - 21.5);
  }
  public void displayRad(){
    fill(#d3d3d3, 150);
    circle(pos.x, pos.y, radius);
    this.display();
  }
  public void attack(){
  }
  public void upgrade(){
  }
}
