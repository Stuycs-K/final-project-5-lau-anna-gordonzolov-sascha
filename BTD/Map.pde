import java.util.*;
public class Map{
  private int money;
  private int lives;
  private PVector start;
  private PVector end;
  private PImage background;
  private ArrayList<Block> path = new ArrayList<Block>();
  public Map(PImage map){
    background = map;
    money = 0;
    lives = 0;
  }
  public int getWidth(){
    return background.width;
  }
  public int getHeight(){
    return background.height;
  }
  public void display(){
    image(background, 0, 0);
    for (int h = 0; h < background.height; h += 41) {
      for (int w = 0; w < background.width; w += 41) {
        Block curr = new Block(w,h);
        color mid = background.get(w+15,h+15);
        if (red(mid) > 120 && blue(mid) > 110) {
          curr.setFill(color(20,45,10));
          path.add(curr);
        }
        else {
          curr.setFill(color(#00FFFFFF));
        }
        //noFill();
        curr.display();
      }
    }
    print(path);
  }
  public void displayMoney(){
  }
  public void displaylives(){
  }
  public boolean canBePlaced(int[][] size){
    return false;
  }
  public ArrayList<Block> getPath() {
    return path;
  }
  void mousePressed() {
  }
}
  
