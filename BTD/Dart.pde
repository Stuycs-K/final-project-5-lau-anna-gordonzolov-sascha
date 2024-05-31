public class Dart {
  private int speed= 15;
  private int size = 1;
  private PImage sprite;
  private PVector pos;
  public Dart(float x, float y) {
     sprite = loadImage("dart.png");
     pos = new PVector(x,y);
  }
  public void display() {
    image(sprite,pos.x,pos.y);
  }
  public void pop(Bloons balloon) {
  }
  public void fly(Monkeys mon, Bloons bloon) {
    if (pos.x < bloon.getPos().x + 12 && pos.x > bloon.getPos().x - 12 && pos.y < bloon.getPos().y + 20.5 && pos.y > bloon.getPos().y - 20.5){
      bloon.levelDown();
      mon.setAtt();
    }
    this.display();
    //print("flying");
    PVector dist = PVector.sub(bloon.getPos(),mon.getPos());
    PVector move = dist.div(dist.mag());
    pos.x += move.x * speed;
    pos.y += move.y * speed;
  }
}
