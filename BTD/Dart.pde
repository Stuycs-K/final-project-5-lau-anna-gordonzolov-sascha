public class Dart {
  private float speed;
  private PImage sprite;
  private PVector pos;
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
    else if (type == 3) {
      speed = 10;
      sprite = loadImage("nDart.png");
    }
     pos = new PVector(x,y);
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
  public boolean fly(Monkeys mon, Bloons bloon) {
    if (pos.x < bloon.getPos().x + 12 && pos.x > bloon.getPos().x - 12 && pos.y < bloon.getPos().y + 20.5 && pos.y > bloon.getPos().y - 20.5){
      bloon.hit();
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
  public boolean fly(Monkeys mon, Bloons bloon, int n) {
    if (pos.x < bloon.getPos().x + 12 && pos.x > bloon.getPos().x - 12 && pos.y < bloon.getPos().y + 20.5 && pos.y > bloon.getPos().y - 20.5){
      if (bloon.getLevel() == 1) {
        bloon.hit();
      }
      else {
        bloon.hit();
        bloon.hit();
      }
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
      bloon.hit();
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
