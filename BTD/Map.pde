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
    //add a grid
  }
  public int getWidth(){
    return background.width;
  }
  public int getHeight(){
    return background.height;
  }
  public void display(){
    image(background, 0, 0);
  }
  public void displayMoney(){
  }
  public void displaylives(){
  }
  public boolean canBePlaced(int[][] size){
    return false;
  }
}
  
