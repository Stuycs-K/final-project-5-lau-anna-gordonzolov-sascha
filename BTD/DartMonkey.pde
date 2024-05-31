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
  private Bloons bloon;
  private boolean att;
  private PVector pos;
  private Dart d;
  private boolean isSelected;
  private PImage sprite;
  public DartMonkey(int x, int y){
    att = false;
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
  public Dart getDart(){
    return d;
  }
  public Bloons getBloon(){
    return bloon;
  }
  public void isIn(int x, int y){
    if (x > minX && x < maxX && y > minY && y < maxY){
      displayRad = !displayRad;
    }
  }
  
  public void attack(Bloons b){
    d = new Dart(pos.x,pos.y);
    /*if (around(pos.x,b.getX()) && around(pos.y, b.getY())) {
      if (b.getLevel() > 1) {
        b.levelDown();
      }
    }*/
    att = true;
    bloon = b;
    //d.fly(b);
    d.display();
  }
  public boolean around(float n1, float n2) {
    return Math.abs(n1-n2) <= 4;
  }
  public boolean getAtt(){
    return att;
  }
  public boolean isInRad(Bloons b){
    return (b.getPos().dist(this.pos) < this.radius);
  }
  public void upgrade(){
  }
  public PVector getPos() {
    return pos;
  }
}
