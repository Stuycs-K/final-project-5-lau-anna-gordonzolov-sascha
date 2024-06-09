public class Block {
  private PVector pos;
  private float minX;
  private float maxX;
  private float minY;
  private float maxY;
  public Block (float x, float y) {
    pos = new PVector(x, y);
    minX = x;
    minY = y;
    maxX = x + 41;
    maxY = y + 41;
  }
  public void display() {
    //stroke(#00FFFFFF);
    noFill();
    square(pos.x, pos.y, 41);
    //edit the last value based on the map
    //first two values are the UPPER LEFT CORNER
  }
  public float getX() {
    return pos.x;
  }
  public boolean isIn(float x, float y){
    return (x > minX && x < maxX && y > minY && y < maxY);
  }
  public float getY() {
    return pos.y;
  }
  public String toString() {
    return "(" + pos.x + ", " + pos.y + ")";
  }
  public PVector getPos() {
    return pos;
  }
}
