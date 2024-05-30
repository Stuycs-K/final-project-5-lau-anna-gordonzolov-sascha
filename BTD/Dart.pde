public class Dart {
  private int speed;
  private int size;
  private PImage sprite;
  public Dart() {
     sprite = loadImage("dart.png");
  }
  public void display() {
    image(sprite,0,205);
  }
  public void pop(Bloons balloon) {
  }
  public void fly() {
  }
}
