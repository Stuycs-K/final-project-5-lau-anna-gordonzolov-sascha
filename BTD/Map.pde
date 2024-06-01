import java.util.*;
public class Map{
  private int money;
  private int lives;
  private Block start;
  private Block end;
  private PImage background;
  private Block[][] blocks;
  private LinkedList<Block> path;
  private ArrayList<Block> turns;
  PFont font;
  public Map(PImage map){
    background = map;
    blocks = new Block[13][20];
    path = new LinkedList<Block>();
    turns = new ArrayList<Block>();
    for (int i = 0; i < blocks.length; i++){
      for (int j = 0; j < blocks[0].length; j++){
        blocks[i][j] = new Block(map.width * j /20, map.height * i /13);
      }
    }
    start = blocks[5][0];
    end = blocks[12][9];
    for (int i = 0; i <= 9; i++) {
      path.add(blocks[5][i]);
    }
    turns.add(blocks[5][9]);
    for (int i = 5; i >= 3; i--) {
      path.add(blocks[i][9]);
    }
    turns.add(blocks[2][9]);
    for (int i = 9; i >= 7; i--) {
      path.add(blocks[2][i]);
    }
    turns.add(blocks[2][6]);
    for(int i = 2; i <= 10; i++) {
      path.add(blocks[i][6]);
    }
    turns.add(blocks[10][6]);
    for (int i = 5; i >= 3; i--) {
      path.add(blocks[10][i]);
    }
    turns.add(blocks[10][3]);
    for (int i = 9; i >= 7; i--) {
      path.add(blocks[i][3]);
    }
    turns.add(blocks[7][3]);
    for (int i = 3; i <= 11; i++) {
      path.add(blocks[7][i]);
    }
    turns.add(blocks[7][12]);
    for (int i = 7; i >= 4; i--) {
      path.add(blocks[i][12]);
    }
    turns.add(blocks[4][12]);
    for (int i = 13; i <= 15; i++) {
      path.add(blocks[4][i]);
    }
    turns.add(blocks[4][15]);
    for (int i = 5; i <= 9; i++) {
      path.add(blocks[i][15]);
     }
     turns.add(blocks[9][15]);
     for (int i = 8; i <= 14; i++) {
       path.add(blocks[9][i]);
     }
     turns.add(blocks[9][8]);
     for (int i = 9; i <= 12; i++) {
       path.add(blocks[i][8]);
     }
     turns.add(blocks[12][8]);
     turns.add(end);
    money = 650;
    lives = 40;
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
    for (int i = 0; i < blocks.length; i++) {
      for (int j = 0; j < blocks[0].length; j++) {
        blocks[i][j].display();
      }
    }
    displayMoney();
    displayLives();
  }
  public void displayMoney(){
    PImage coins = loadImage("money.png");
    image(coins,90,10);
    textSize(20);
    text("$" + money, 120,30);
  }
  public void displayLives(){
    PImage health = loadImage("health.png");
    image(health,10,10);
    font = createFont("honey.ttf", 20);
    fill(255,255,255);
    textFont(font);
    text(lives,40,30);
  }
  public Block getThis(){
    return start;
  }
  public void addMoney(int n) {
    money += n;
  }
  public Block getNext(float x, float y){
    return start;
  }
  public boolean canBePlaced(int[][] size){
    return false;
  }
  public LinkedList<Block> getPath() {
    return path;
  }
  public ArrayList<Block> getTurns() {
    return turns;
  }
  void mousePressed() {
  }
   public void displayPath(){
      for (Block i : path){
        fill(0);
        rect(i.getX(), i.getY(), 862/20, 532/13);
      }
   }
}
  
