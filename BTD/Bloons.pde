public class Bloons{
  private int level;
  private float velo; 
  private int value;
  private boolean exists;
  private PVector pos;
  private PImage balloon;
  private Map m;
  private int turns;
  private float angle = 0;
  private int hits;
  private String[] sprites = new String[]{"red","blue","green","yellow","pink","black","white","camo","purple","lead","zebra","rainbow","ceramic","moab"};
  //in BTD, call this with (0,205);
  public Bloons(int level, Map map){
    exists = false;
    turns = 0;
    this.level = level;
    balloon = loadImage(sprites[level-1] + ".png");
    if (level <= 5) {
      value = level;
      hits = 1;
      velo = 2.5 + 0.5 * (level - 1);
    }
    else if (level > 5 && level <= 9) {
      value = 11;
      hits = 1;
      velo = 2;
    }
    else if (level == 10 || level == 11) {
      value = 23;
      hits = 1;
      velo = 1.5;
    }
    else if (level == 12) {
      value = 47;
      hits = 1;
      velo = 2;
    }
    else if (level == 13) {
      value = 104;
      hits = 5;
      velo = 2.5;
    }
    else if (level == 14) {
      value = 616;
      hits = 50;
      velo = 1;
    }
    m = map;
    pos = new PVector(0, 204);
  }
  public Bloons(int level, Map map, float x, float y) {
    this(level,map);
    pos = new PVector(x,y);
  }
  public void display() {
    if (level == 14) {
      pushMatrix();
      imageMode(CENTER);
      translate(pos.x, pos.y+10);
      rotate(angle);
      image(balloon, 0, 0);
      imageMode(CORNER);
      popMatrix();
    }
    else {
      image(balloon,pos.x,pos.y);
    }
  }
  public int getValue() {
    return value; //each pop is $1
  }
  public PVector getPos(){
    return pos;
  }
  public void move(){
    if (turns < 12) {
      PVector dir = PVector.sub(turningpt.get(turns).getPos(),pos);
      dir = dir.div(dir.mag());
      angle =  dir.heading();
      pos.x += dir.x * velo;
      pos.y += dir.y * velo;
      if (around(pos.x,turningpt.get(turns).getX()) && around(pos.y,turningpt.get(turns).getY())) {
        turns++;
      }
    }
    else if (pos.y <= 550){
      pos.y += velo;
    }
  }
  public boolean around(float n1, float n2) {
    return Math.abs(n1-n2) <= 4;
  }
  public void level(int l){
    level = l;
    if (level >= 1) {
      balloon = loadImage(sprites[level-1] + ".png");
      if (level <= 5) {
        value = level;
        hits = 1;
        velo = 2.5 + 0.5 * (level - 1);
      }
      else if (level > 5 && level <= 9) {
        value = 11;
        hits = 1;
        velo = 2;
      }
      else if (level == 10 || level == 11) {
        value = 23;
        hits = 1;
        velo = 1.5;
      }
      else if (level == 12) {
        value = 47;
        hits = 1;
        velo = 2;
      }
      else if (level == 13) {
        value = 104;
        hits = 10;
        velo = 2.5;
      }
      else if (level == 14) {
        value = 616;
        hits = 200;
        velo = 1;
      }
    }
    else {
      exists = false;
      pos.x = 1000;
      pos.y = 1000;
    }
  }
  public boolean isCamo() {
    return (level == 8);
  }
  public void levelDown(Round r){
    if (level <= 5) {
      this.level(level - 1);
    }
    else if (level >=6 && level <=9) {
      this.level(5);
      r.getIn().get(0).add(new Bloons(5,m,pos.x,pos.y));
    }
    else if (level == 10) {
      this.level(6);
      r.getIn().get(0).add(new Bloons(6,m,pos.x,pos.y));
    }
    else if (level == 11) {
      this.level(6);
      r.getIn().get(0).add(new Bloons(7,m,pos.x,pos.y));
    }
    else if (level == 12) {
      this.level(11);
      r.getIn().get(0).add(new Bloons(11,m,pos.x,pos.y));
    }
    else if (level == 13) {
      this.level(12);
      r.getIn().get(0).add(new Bloons(12,m,pos.x,pos.y));
    }
    else if (level == 14) {
      this.level(13);
      r.getIn().get(0).add(new Bloons(13,m,pos.x,pos.y));
      r.getIn().get(0).add(new Bloons(13,m,pos.x,pos.y));
      r.getIn().get(0).add(new Bloons(13,m,pos.x,pos.y));
    }
    //remove this balloon and replace it with a lower level at the same position
  }
  public void hit() {
    hits --;
    if (hits == 0) {
      levelDown(rounds.get(curr));
      m.addMoney(value);
    }
  }
  public void exist(){
    exists = true;
  }
  public boolean doesExist(){
    return exists;
  }
  public boolean atEnd(){
    return (pos.y > 532);
  }
  public float getX() {
    return pos.x;
  }
  public float getY() {
    return pos.y;
  }
  public int getLevel() {
    return level;
  }
}
