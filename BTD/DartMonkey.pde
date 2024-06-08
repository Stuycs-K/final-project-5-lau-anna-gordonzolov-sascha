class DartMonkey extends Monkeys{
  private int cost;
  private int sell;
  private int size;
  private int v;
  private int strength;
  private float diameter;
  private boolean displayRad;
  private float dir;
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
  float angle = 0;
  boolean upgrade;
  int upgrades;
  public DartMonkey(int x, int y, Map map){
    upgrade = false;
    m = map;
    timer = 0;
    upgrades = 0;
    att = false;
    displayRad = false;
    minX = x - 20.5;
    minY = y - 20.5;
    maxX = x + 20.5;
    maxY = y + 20.5;
    sprite = loadImage("DartMonkey.png");
    pos = new PVector(x,y);
    isSelected = false;
    diameter = 200;
    cost = 200;
  }
  public int getCost() {
    return cost;
  }
  public void changeSel() {
    isSelected = !isSelected;
  }
  public void display() {
    //pushMatrix();
    //translate(-pos.x,-pos.y);
    //rotate(angle);
    //translate(pos.x,pos.y);
    image(sprite,pos.x - 21.5,pos.y - 21.5);
    //popMatrix();
  }
  public void move(){
    if (isSelected) {
      pos = new PVector(mouseX,mouseY);
    }
  }
  public float getRad() {
    return diameter;
  }
  public boolean getUpgrade() {
    return upgrade;
  }
  public void addUpgrade() {
    upgrades++;
  }
  public int countUpgrades() {
    return upgrades;
  }
  public boolean getDisplayRad(){
    return displayRad;
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
  public void changeDisplayRad(){
    displayRad = !displayRad;
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
  public boolean isIn(int x, int y) {
    return x > minX && x < maxX && y > minY && y < maxY;
  }
  public void addRad(int n) {
    diameter += 2*n;
  }
  public void changeUpgrade() {
    upgrade = !upgrade;
  }
  public void attack(Bloons b){
    d = new Dart(pos.x,pos.y,m,1,0);
    if (timer == 0){
      /*if (around(pos.x,b.getX()) && around(pos.y, b.getY())) {
        if (b.getLevel() > 1) {
          b.levelDown();
        }
      }*/
      att = true;
      PVector dir = PVector.sub(pos,b.getPos());
      angle += 2 * PI -  dir.heading();
      bloon = b.getPos();
      blon = b;
      timer = 40;
    }
    else{
      timer --;
    }
  }
  public String box(){
    return (minX + " " + maxX + " " + minY + " " + maxY);
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
  public void dartRotate(){
    rotate(0.5);
  }
  public int type() {
    return 1;
  }
}
