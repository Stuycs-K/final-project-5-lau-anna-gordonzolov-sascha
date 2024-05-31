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
  public void fly(Bloons b) {
    PVector dist = PVector.sub(b.getPos(),pos);
    PVector move = dist.div(dist.mag());
    pos.x += move.x * speed;
    pos.y += move.y * speed;
  }
}
