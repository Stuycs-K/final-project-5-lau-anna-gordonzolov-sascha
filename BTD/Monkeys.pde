abstract class Monkeys{
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
  public abstract void attack(Bloons b);
  public abstract void upgrade();
  public void move(){
    if (isSelected) {
      pos = new PVector(mouseX,mouseY);
      monk.displayRad();
    }
  }
  public void changeFreq() {
  }
  public void changeUpgrade() {
  }
  public void changeSel() {
    isSelected = !isSelected;
  }
  public void addUpgrade() {
  }
  public int countUpgrades() {
    return 0;
  }
  public int getHas(){
    return has;
  }
  public void setHas(int num){
    has = num;
  }
  public boolean getUpgrade() {
    return true;
  }
  public float getRad() {
    return diameter/2;
  }
  public PVector getPos() {
    return pos;
  }
  public boolean isInRad(Bloons b){
    return (b.getPos().dist(this.pos) < this.diameter/2);
  }
  public Bloons getBlon(){
    return blon;
  }
  public void setAtt(){
    att = false;
  }
  public boolean isIn(int x, int y) {
    return true;
  }
  public void addRad(int n) {
  }
  public void display(){
  }
  public void displayRad(){
    fill(#d3d3d3, 150);
    circle(pos.x, pos.y, diameter);
    this.display();
  }
  public void displayRadRed(){
  }
  public boolean getDisplayRad(){
    return false;
  }
  public void changeDisplayRad(){
  }
  public boolean getAtt(){
    return false;
  }
  public PVector getBloon(){
    return blon.getPos();
  }
  public Dart getDart(){
    return d;
  }
  public void setCor(float x, float y){
  }
  public Dart getDart(int n){
    return d;
  }
  public int getCost() {
    return cost;
  }
  public void setSelect() {
    isSelected = !isSelected;
  }
  public int type() {
    return 0;
  }
}
