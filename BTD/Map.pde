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
  private boolean done;
  private PFont font = createFont("honey.ttf", 16);
  private PImage coins = loadImage("money.png");
  private PImage health = loadImage("health.png");
  private String title;
  private float titleS;
  public Map(PImage map){
    done = true;
    title = "TOWERS";
    titleS = 20;
    background = map;
    blocks = new Block[13][20];
    path = new LinkedList<Block>();
    turns = new ArrayList<Block>();
    for (int i = 0; i < blocks.length; i++){
      for (int j = 0; j < blocks[0].length; j++){
        blocks[i][j] = new Block(map.width * j /20, map.height * i /13);
      }
    }
    start = new Block(map.width * 1/4, map.height * -1 / 13);
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
  public void setDone(boolean tf){
    done = tf;
  }
  public boolean getDone(){
    return done;
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
  public boolean canPlace(float x, float y){
    boolean can = true;
    for (Block i : path){
      if (i.isIn(x, y)){
        can = false;
      }
    }
    if (x >= 650) {
      can = false;
    }
    return can;
  }
  public void changeTitle(String str, int size) {
    title = str;
    titleS = size;
  }

  public void display(){
    image(background, 0, 0);
    displayMoney();
    displayLives();
    displaySide();
    displayRounds();
  }
  public void displayRounds() {
    textSize(10);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text("ROUND", 607+x,15);
        text("ROUND", 607,15+x);
    } 
    fill(255);
    text("ROUND", 607,15);
    String show = curr + 1 + "/" + 20;
    float posx;
    if (show.length() == 4) {
      posx = 603;
    }
    else {
      posx = 593;
    }
    textSize(20);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text(curr + 1 + "/" + 20, posx+x,32);
        text(curr + 1 + "/" + 20, posx,32+x);
    } 
    fill(255);
    text(curr + 1 + "/" + 20, posx,32);
  }
  public void displaySide() {
    stroke(#AD7C48);
    fill(#C19960);
    rect(650,0,176,532,10);
    fill(#AD7C48);
    rect(660,20,156,40,10);
    textSize(titleS);
    fill(0,0,0);
    float xpos = 660 + ((156 - (titleS *0.65)*title.length())/2.0);
    for(int x = -1; x < 2; x++){
        text(title, xpos+x,50);
        text(title, xpos,50+x);
    } 
    fill(255);
    text(title, xpos,50);
    //dart
    fill(#89CFF0);
    rect(660,80,70,80,10);
    PImage d = loadImage("sDartMonkey.png");
    image(d,680,82);
    textSize(20);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text(200, 685+x,155);
        text(200, 685,155+x);
    } 
    fill(255);
    text(200, 685,155);
    textSize(16);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text("$", 675+x,155);
        text("$", 675,155+x);
    } 
    fill(255);
    text("$", 675,155);
    //tack
    fill(#89CFF0);
    rect(745,80,70,80,10);
    d = loadImage("sTackShooter.png");
    image(d,760,90);
    textSize(20);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text(280, 765+x,155);
        text(280, 765,155+x);
    } 
    fill(255);
    text(280, 765,155);
    textSize(16);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text("$", 755+x,155);
        text("$", 755,155+x);
    } 
    fill(255);
    text("$", 755,155);
    //sniper
    fill(#89CFF0);
    rect(660,190,70,80,10);
    d = loadImage("sSniper.png");
    image(d,680,192);
    textSize(20);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text(300, 685+x,265);
        text(300, 685,265+x);
    } 
    fill(255);
    text(300, 685,265);
    textSize(16);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text("$", 675+x,265);
        text("$", 675,265+x);
    } 
    fill(255);
    text("$", 675,265);
    //super
    fill(#89CFF0);
    rect(745,190,70,80,10);
    d = loadImage("sSuper.png");
    image(d,765,202);
    textSize(20);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text(800, 765+x,265);
        text(800, 765,265+x);
    } 
    fill(255);
    text(800, 765,265);
    textSize(16);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text("$", 755+x,265);
        text("$", 755,265+x);
    } 
    fill(255);
    text("$", 755 ,265);
    //ninja
    fill(#89CFF0);
    rect(660,300,70,80,10);
    d = loadImage("sNinja.png");
    image(d,675,312);
    textSize(20);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text(340, 685+x,375);
        text(340, 685,375+x);
    } 
    fill(255);
    text(340, 685,375);
    textSize(16);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text("$", 675+x,375);
        text("$", 675,375+x);
    } 
    fill(255);
    text("$", 675,375);
    //start
    stroke(#556915);
    fill(#71E709);
    rect(660,410,156,100,10);
    textSize(40);
    fill(0,0,0);
    for(int x = -1; x < 2; x++){
        text("START", 680+x,475);
        text("START", 680,475+x);
    } 
    fill(255);
    text("START", 680,475);
    if (clicked) {
      if (chosen.type() != 3) {
        stroke(#556915);
        fill(#71E709);
        rect(660,300,156,100,10);
        d = loadImage("upgrade.png");
        image(d,700,330);
        textSize(18);
        fill(0,0,0);
        for(int x = -1; x < 2; x++){
            text("LARGER RADIUS", 665+x,325);
            text("LARGER RADIUS", 665,325+x);
        } 
        fill(255);
        text("LARGER RADIUS", 665,325);
        textSize(20);
        fill(0,0,0);
        for(int x = -1; x < 2; x++){
            text(150, 730+x,395);
            text(150, 730,395+x);
        } 
        fill(255);
        text(150, 730,395);
        textSize(16);
        fill(0,0,0);
        for(int x = -1; x < 2; x++){
            text("$", 720+x,395);
            text("$", 720,395+x);
        } 
        fill(255);
        text("$", 720,395);
      }
      else {
        stroke(#556915);
        fill(#71E709);
        rect(660,300,156,100,10);
        d = loadImage("speed.png");
        image(d,720,330);
        textSize(15);
        fill(0,0,0);
        for(int x = -1; x < 2; x++){
            text("FASTER SHOOTING", 665+x,325);
            text("FASTER SHOOTING", 665,325+x);
        } 
        fill(255);
        text("FASTER SHOOTING", 665,325);
        textSize(20);
        fill(0,0,0);
        for(int x = -1; x < 2; x++){
            text(235, 730+x,395);
            text(235, 730,395+x);
        } 
        fill(255);
        text(235, 730,395);
        textSize(16);
        fill(0,0,0);
        for(int x = -1; x < 2; x++){
            text("$", 720+x,395);
            text("$", 720,395+x);
        } 
        fill(255);
        text("$", 720,395);
      }
      stroke(#556915);
      fill(#71E709);
      rect(660,190,156,100,10);
      d = loadImage("sell.png");
      image(d,700,220);
      textSize(18);
      fill(0,0,0);
      for(int x = -1; x < 2; x++){
          text("SELL", 715+x,215);
          text("SELL", 715,215+x);
      } 
      fill(255);
      text("SELL", 715,215);
    }
  }
  public void displayMoney(){
    textSize(100);
    //text("money", 100,100);
    image(coins,90,10);
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
  public int getMoney() {
    return money;
  }
  public void subMoney(int n) {
    money -= n;
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
}
  
