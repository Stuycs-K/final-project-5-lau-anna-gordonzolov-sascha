class DartMonkey extends Monkeys{
  private int cost;
  private int sell;
  private int size;
  private int v;
  private int strength;
  private float diameter;
  private boolean displayDia;
  float minX;
  float maxX;
  float minY;
  float maxY;
  private int timer;
  private PVector bloon;
  private Bloons blon;
  private boolean att;
  private PVector pos;
  private Dart d;
  private boolean isSelected;
  private PImage sprite;
  private Map m;
  public DartMonkey(int x, int y, Map map){
    m = map;
    timer = 0;
    att = false;
    displayDia = false;
    minX = x - 20.5;
    minY = y - 20.5;
    maxX = x + 20.5;
    maxY = y + 20.5;
    sprite = loadImage("DartMonkey.png");
    pos = new PVector(x,y);
    isSelected = false;
    diameter = 200;
  }
  public void display() {
    image(sprite,pos.x - 21.5,pos.y - 21.5);
  }
  public float getDia() {
    return diameter;
  }
  public boolean getDisplayDia(){
    return displayDia;
  }
  public void displayDia(){
    fill(#d3d3d3, 150);
    circle(pos.x, pos.y, diameter);
    this.display();
  }
  public void changeDisplayDia(){
    displayDia = !displayDia;
  }
  public Dart getDart(){
    return d;
  }
  public PVector getBloon(){
    return bloon;
  }
  public Bloons getBlon(){
    return blon;
  }
  public void isIn(int x, int y){
    if (x > minX && x < maxX && y > minY && y < maxY){
      displayDia = !displayDia;
    }
  }
  
  public void attack(Bloons b){
    if (timer == 0){
      d = new Dart(pos.x,pos.y, m, 1);
      /*if (around(pos.x,b.getX()) && around(pos.y, b.getY())) {
        if (b.getLevel() > 1) {
          b.levelDown();
        }
      }*/
      att = true;
      bloon = b.getPos();
      blon = b;
      timer = 40;
    }
    else{
      timer --;
    }
  }
  public boolean around(float n1, float n2) {
    return Math.abs(n1-n2) <= 4;
  }
  public boolean getAtt(){
    return att;
  }
  public void setAtt(){
    att = false;
  }
  public boolean isInDia(Bloons b){
    return (b.getPos().dist(this.pos) < diameter/2);
  }
  public void upgrade(){
  }
  public PVector getPos() {
    return pos;
  }
  public int type() {
    return 1;
  }
}
