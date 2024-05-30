class DartMonkey extends Monkeys{
  private int cost;
  private int sell;
  private int size;
  private int v;
  private int strength;
  private int radius;
  private boolean displayRad;
  float minX;
  float maxX;
  float minY;
  float maxY;
  private PVector pos;
  private boolean isSelected;
  private PImage sprite;
  public DartMonkey(int x, int y){
    displayRad = false;
    minX = x - 20.5;
    minY = y - 20.5;
    maxX = x + 20.5;
    maxY = y + 20.5;
    sprite = loadImage("DartMonkey.png");
    pos = new PVector(x,y);
    isSelected = false;
    radius = 200;
  }
  public void display() {
    image(sprite,pos.x - 21.5,pos.y - 21.5);
  }
  public boolean getDisplayRad(){
    return displayRad;
  }
  public void displayRad(){
    fill(#d3d3d3, 150);
    circle(pos.x, pos.y, radius);
    this.display();
  }
  public void changeDisplayRad(){
    displayRad = !displayRad;
  }
  public void isIn(int x, int y){
    if (x > minX && x < maxX && y > minY && y < maxY){
      displayRad = !displayRad;
    }
  }

  public void attack(Bloons b){
     PVector distance = PVector.sub(b.getPos(),pos);
     float angle = distance.heading();
     
  }
  public boolean isInRad(Bloons b){
    return (b.getPos().dist(this.pos) < this.radius);
  }
  public void upgrade(){
  }
}
