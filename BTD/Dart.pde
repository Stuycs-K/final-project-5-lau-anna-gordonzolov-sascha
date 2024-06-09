public class Dart {
  private float speed;
  private int size = 1;
  private PImage sprite;
  private PVector pos;
  private Map m;
  private float ogX;
  private float ogY;
  private boolean popped = false;
  public Dart(float x, float y, Map map, int type, int num) {
    if (type == 1) {
      speed = 15;
      sprite = loadImage("dart.png");
    }
    else if (type == 2) {
      speed = 2;
      sprite = loadImage("nail" + num + ".png");
    }
     pos = new PVector(x,y);
     m = map;
     ogX = x;
     ogY = y;
  }
  public float getogX() {
    return ogX;
  }
  public float getogY() {
    return ogY;
  }
  public void display() {
    image(sprite,pos.x,pos.y);
  }
  public void pop(Bloons balloon) {
  }
  public boolean fly(Monkeys mon, Bloons bloon) {
    if (pos.x < bloon.getPos().x + 12 && pos.x > bloon.getPos().x - 12 && pos.y < bloon.getPos().y + 20.5 && pos.y > bloon.getPos().y - 20.5){
      m.addMoney(bloon.getValue());
      bloon.levelDown();
      mon.setAtt();
      popped = true;
    }
    else {
      popped = false;
    }
    this.display();
    PVector dist = PVector.sub(bloon.getPos(),mon.getPos());
    PVector move = dist.div(dist.mag());
    pos.x += move.x * speed;
    pos.y += move.y * speed;
    return popped;
  }
  public boolean fly(Bloons bloon, Monkeys mon, int n, float x, float y) {
    if (pos.x < bloon.getPos().x + 12 && pos.x > bloon.getPos().x - 12 && pos.y < bloon.getPos().y + 20.5 && pos.y > bloon.getPos().y - 20.5){
      m.addMoney(1);
      bloon.levelDown();
      mon.setAtt();
      popped = true;
    }
    else {
      popped = false;
    }
    if (pos.dist(mon.getPos()) > mon.getRad()/2) {
      pos.x = x;
      pos.y = y;
      mon.setAtt();
    }
    this.display();
    pos.x += cos((PI/4)*n) * speed;
    pos.y -= sin((PI/4)*n) * speed;
    return popped;
  }
}
