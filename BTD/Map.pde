import java.util.*;
public class Map{
  private int money;
  private int lives;
  private Block start;
  private Block end;
  private PImage background;
  private Block[][] blocks = new Block[13][20];
  private LinkedList<Block> path = new LinkedList<Block>();
  public Map(PImage map){
    background = map;
    Block start = new Block(0.0, 205.0);
    path.add(start);
    for (int i = 0; i < blocks.length; i++){
      for (int j = 0; j < blocks[0].length; j++){
        blocks[i][j] = new Block(map.height * i /13, map.width * i /20);
      }
    }
    for (int i = 0; i <= 10; i++) {
      path.add(blocks[5][i]);
    }
    for (int i = 4; i >= 2; i--) {
      path.add(blocks[i][10]);
    }
    for (int i = 9; i >= 6; i--) {
      path.add(blocks[2][i]);
    }
    for(int i = 2; i <= 10; i++) {
      path.add(blocks[i][6]);
    }
    for (int i = 5; i >= 3; i--) {
      path.add(blocks[10][i]);
    }
    for (int i = 9; i >= 7; i--) {
      path.add(blocks[i][3]);
    }
    for (int i = 3; i <= 12; i++) {
      path.add(blocks[7][i]);
    }
    for (int i = 6; i >= 4; i--) {
      path.add(blocks[i][12]);
    }
    for (int i = 13; i <= 15; i++) {
      path.add(blocks[4][i]);
    }
    for (int i = 5; i <= 9; i++) {
      path.add(blocks[i][15]);
     }
     for (int i = 8; i <= 14; i++) {
       path.add(blocks[9][i]);
     }
     for (int i = 9; i <= 12; i++) {
       path.add(blocks[i][8]);
     }
    money = 0;
    lives = 0;
  }
  public int getWidth(){
    return background.width;
  }
  public int getHeight(){
    return background.height;
  }
  public Block getStart(){
    return start;
  }
  public Block getEnd(){
    return end;
  }
  public void display(){
    image(background, 0, 0);
    int row = 0;
    int col = 0;
    for (int h = 0; h < background.height; h += 41) {
      for (int w = 0; w < background.width-20; w += 41) {
        Block curr = new Block(w,h);
        blocks[row][col] = curr;
        curr.display();
        col++;
      }
      row++;
      col = 0;
    }
    start = blocks[5][0];
    end = blocks[12][9];
    //print(Arrays.deepToString(blocks));
  }
  public void displayMoney(){
  }
  public void displaylives(){
  }
  public boolean canBePlaced(int[][] size){
    return false;
  }
  public LinkedList<Block> getPath() {
    return path;
  }
  void mousePressed() {
  }
   public void displayPath(){
      for (Block i : path){
        System.out.println(i.toString());
      }
      System.out.println(path.size());
      path.getFirst().setFill(123);
   }
}
  
