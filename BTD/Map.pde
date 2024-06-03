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
  private String title;
  public Map(PImage map){
    title = "TOWERS";
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
  public void changeTitle(String str) {
  }

  public void display(){
    image(background, 0, 0);
    displayMoney();
    displayLives();
    displaySide();
  }
  public void displaySide() {
    stroke(#AD7C48);
    fill(#C19960);
    rect(650,0,176,532,10);
    fill(#AD7C48);
    rect(660,50,156,40,10);
    fill(0,0,0);
    float xpos = 660 + ((156 - 13*title.length())/2.0);
    for(int x = -1; x < 2; x++){
        text(title, xpos+x,80);
        text(title, xpos,80+x);
    } 
    fill(255);
    text(title, xpos,80);
    fill(#89CFF0);
    rect(662.5,110,70,80,10);
    PImage d = loadImage("sDartMonkey.png");
    image(d,680,110);
    rect(747.5,110,70,80,10);
    d = loadImage("sTackShooter.png");
    image(d,760,120);
  }
  public void displayMoney(){
    textSize(100);
    //text("money", 100,100);
    PImage coins = loadImage("money.png");
    image(coins,90,10);
    font = createFont("honey.ttf", 16);
    textFont(font);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text("$", 117+x,30);
        text("$", 117,30+x);
    } 
    fill(255);
    text("$", 117,30);
    textSize(20);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text(money, 126+x,30);
        text(money, 126,30+x);
    }
    fill(255);
    text(money, 126,30);
  }
  public void displayLives(){
    PImage health = loadImage("health.png");
    image(health,10,10); 
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text(lives, 40+x,30);
        text(lives, 40,30+x);
    }
    fill(255);
    text(lives, 40,30);
  }
  public Block getThis(){
    return start;
  }
  public void addMoney(int n) {
    money += n;
  }
  public void noLives() {
    lives = 0;
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
  public void minus(int n) {
    if (lives - n < 0){
      lives = 0;
    }
    else{
      lives -= n;
    }
  }
  public int getLives(){
    return lives;
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
  
