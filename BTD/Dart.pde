public class Dart {
  private int speed= 15;
  private int size = 1;
  private PImage sprite;
  private float dir;
  private PVector move;
  private PVector pos;
  public Dart(Monkeys monk, Bloons ball, int x, int y) {
     sprite = loadImage("dart.png");
     PVector distance = PVector.sub(ball.getPos(),monk.getPos());
     move = distance.div(distance.mag());
     dir = distance.heading();
     pos = new PVector(x,y);
     fly(move);
  }
  public void display() {
    image(sprite,0,205);
  }
  public void pop(Bloons balloon) {
  }
  public void fly(PVector move) {
    
  }
}
