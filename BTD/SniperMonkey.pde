class SniperMonkey extends Monkeys{
  private int cost;
  private float diameter;
  private boolean displayRad;
  private float minX;
  private float maxX;
  private float minY;
  private float maxY;
  private int timer;
  private int has;
  private PVector bloon;
  private Bloons blon;
  private boolean att;
  private PVector pos;
  private Dart d;
  private boolean isSelected;
  private PImage sprite;
  private Map m;
  private float angle = 3 * PI/2;
  private boolean upgrade;
  private int upgrades;
  private int freq = 200;
  public SniperMonkey(int x, int y, Map map){
    has = -1;
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
    sprite = loadImage("sniper.png");
    pos = new PVector(x,y);
    isSelected = false;
    diameter = 5000;
    cost = 300;
  }
  public int getCost() {
    return cost;
  }
  public void changeSel() {
    isSelected = !isSelected;
  }
  public void display() {
    pushMatrix();
    imageMode(CENTER);
    translate(pos.x, pos.y);
    rotate(PI/2 + angle);
    image(sprite, 0, 0);
    imageMode(CORNER);
    popMatrix();
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
  public int getHas(){
    return has;
  }
  public void setHas(int num){
    has = num;
  }
  public void displayRad(){
    fill(#d3d3d3, 150);
    circle(pos.x, pos.y, 120);
    this.display();
  }
  public void displayRadRed(){
    fill(#FF0000, 150);
    circle(pos.x, pos.y, 120);
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
    d = new Dart(pos.x, pos.y, m, 1, 0);
    if (timer % freq == 0){
      att = true;
      PVector dir = PVector.sub(b.getPos(), pos);
      angle = dir.heading();
      bloon = b.getPos();
      blon = b;
    }
    timer ++;
  }
  public void changeFreq() {
    freq /= 1.2;
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
  public int type() {
    return 3;
  }
}
