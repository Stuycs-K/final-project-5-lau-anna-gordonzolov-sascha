public class Map{
  private int money;
  private int lives;
  private PVector start;
  private PVector end;
  private PImage background;
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
        curr.display();
      }
    }
  }
  public void displayMoney(){
  }
  public void displaylives(){
  }
  public boolean canBePlaced(int[][] size){
    return false;
  }
  void mousePressed() {
  }
}
  
