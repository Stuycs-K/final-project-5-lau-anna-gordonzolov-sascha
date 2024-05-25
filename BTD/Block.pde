public class Block {
  private PVector pos;
  private boolean onPath;
  public Block (float x, float y) {
    pos = new PVector(x,y);
    onPath = false;
  }
  public void display() {
    //stroke(#00FFFFFF);
    noFill();
    square(pos.x,pos.y,41);
    //edit the last value based on the map
    //first two values are the UPPER LEFT CORNER
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
  public boolean on() {
    return onPath;
  }
  public void setPath(boolean on) {
    onPath = on;
  }
}
