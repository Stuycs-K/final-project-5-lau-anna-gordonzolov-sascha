class TackShooter extends Monkeys{
  private int cost;
  private int sell;
  private int size;
  private int v;
  private int strength;
  private float diameter;
  private boolean displayRad;
  private float minX;
  private float maxX;
  private float minY;
  private float maxY;
  private int timer;
  private PVector bloon;
  private Bloons blon;
  private boolean att;
  private PVector pos;
  private Dart[] d;
  private boolean isSelected;
  private PImage sprite;
  private Map m;
  private boolean upgrade;
  private int upgrades;
  public TackShooter(int x, int y, Map map){
    upgrade = false;
    m = map;
    upgrades = 0;
    timer = 0;
    att = false;
    displayRad = false;
    minX = x - 20.5;
    minY = y - 20.5;
    maxX = x + 20.5;
    maxY = y + 20.5;
    sprite = loadImage("tack.png");
    pos = new PVector(x,y);
    isSelected = false;
    diameter = 130;
    cost = 230;
  }
  public int getCost() {
    return cost;
  }
  public void display() {
    image(sprite,pos.x - 21.5,pos.y - 21.5);
  }
  public float getRad() {
    return diameter;
  }
  public boolean getDisplayRad(){
    return displayRad;
  }
  public void move(){
    if (isSelected) {
      pos = new PVector(mouseX,mouseY);
    }
  }
  public void addUpgrade() {
    upgrades++;
  }
  public int countUpgrades() {
    return upgrades;
  }
  public void changeSel() {
    isSelected = !isSelected;
  }
  public void displayRad(){
    fill(#d3d3d3, 150);
    circle(pos.x, pos.y, diameter);
    this.display();
  }
  public void displayRadRed(){
    fill(#FF0000, 150);
    circle(pos.x, pos.y, diameter);
    this.display();
  }
  public boolean getUpgrade() {
    return upgrade;
  }
  public void changeDisplayRad(){
    displayRad = !displayRad;
  }
  public Dart getDart(int n){
    return d[n];
  }
  public PVector getBloon(){
    return bloon;
  }
  public Bloons getBlon(){
    return blon;
  }

  public boolean isIn(int x, int y) {
    return x > minX && x < maxX && y > minY && y < maxY;
  }
  public void changeUpgrade() {
    upgrade = !upgrade;
  }
  public void addRad(int n) {
    diameter += 2*n;
  }
  public void attack(Bloons b){
    if (timer % 55 == 0){
      d = new Dart[8];
      d[0] = new Dart(pos.x+5,pos.y-10.75+5,map, 2,0);
      d[1] = new Dart(pos.x-21.5/4+5,pos.y-21.5*0.75+5,map, 2,1);
      d[2] = new Dart(pos.x-10.75+5,pos.y-21.5+4,map, 2,2);
      d[3] = new Dart(pos.x-21.5*0.75+5,pos.y-21.5*0.75+5,map, 2,3);
      d[4] = new Dart(pos.x-21.5+5,pos.y-10.75+5, map, 2,4);
      d[5] = new Dart(pos.x-21.5*0.75+5,pos.y-21.5/4+5,map, 2,5);
      d[6] = new Dart(pos.x-10.75+5,pos.y-21.5/4+5,map, 2,6);
      d[7] = new Dart(pos.x+5,pos.y+5,map, 2,7);
      /*if (around(pos.x,b.getX()) && around(pos.y, b.getY())) {
        if (b.getLevel() > 1) {
          b.levelDown();
        }
      }*/
      att = true;
      bloon = b.getPos();
      blon = b;
    }
     timer ++;
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
  public boolean isInRad(Bloons b){
    return (b.getPos().dist(this.pos) < diameter/2);
  }
  public void upgrade(){
  }
  public PVector getPos() {
    return pos;
  }
  public void setCor(float x, float y){
    minX = x - 20.5;
    minY = y - 20.5;
    maxX = x + 20.5;
    maxY = y + 20.5;
    pos = new PVector(x,y);
  }
  public int type() {
    return 2;
  }
}
