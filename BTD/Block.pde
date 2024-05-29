public class Block {
  private PVector pos;
  float minX;
  float maxX;
  float minY;
  float maxY;
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
  public float getY() {
    return pos.y;
  }
  public void highlight() {
    //make the borders white
  }
  public String toString() {
    return "(" + pos.x + ", " + pos.y + ")";
  }
  public void setFill(color c) {
    fill(c);
  }
  public PVector getPos() {
    return pos;
  }
}
