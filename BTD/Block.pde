public class Block {
  private PVector pos;
  public Block (int x, int y) {
    pos = new PVector(x,y);
  }
  public void display() {
    stroke(#00FFFFFF);
    square(x,y,200);
    //edit the last value based on the map
    //first two values are the UPPER LEFT CORNER
  }
  public void highlight() {
    //make the borders white
  }
}
