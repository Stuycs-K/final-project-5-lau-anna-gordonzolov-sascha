import java.util.*;
public class Round{
  private int num;
  private float timer;
  private boolean play;
  private ArrayList<ArrayList<Bloons>> in;
  private Map map;
  private int place;
  public Round(int n, Map m){
    timer = 0;
    place = 0;
    in = new ArrayList<ArrayList<Bloons>>();
    map = m;
    num = n;
    if (n == 1){
      ArrayList<Bloons> temp = new ArrayList<Bloons>();
      for (int i = 0; i < 20; i++){
        Bloons b = new Bloons(1, map);
        temp.add(b);
      }
      in.add(temp);
    }
    if (n == 2){
      ArrayList<Bloons> temp = new ArrayList<Bloons>();
      for (int i = 0; i < 35; i++){
        Bloons b = new Bloons(1, map);
        temp.add(b);
      }
      in.add(temp);
    }
    if (n == 3){
      ArrayList<Bloons> temp = new ArrayList<Bloons>();
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(1, map);
        temp.add(b);
      }
      in.add(temp);
      temp.clear();
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(2, map);
        temp.add(b);
      }
      in.add(temp);
      temp.clear();
      for (int i = 0; i < 15; i++){
        Bloons b = new Bloons(1, map);
        temp.add(b);
      }
      in.add(temp);
    }
  }
  public ArrayList<ArrayList<Bloons>> getIn(){
    return in;
  }
  public int getSize(){
    return in.size() - place;
  }
  public int getNum(){
    return num;
  }
  public boolean nextRound(){
    boolean check = true;
    for (ArrayList<Bloons> bb : in){
      for (Bloons b : bb){  
        if (b.doesExist()){
          check = false;
        }
      }
    }
    return check && play;
  }
  public void play(){
    play = true;
    if (num == 1){
      for (ArrayList<Bloons> bb : in){
        for (Bloons b : bb){  
          if(b.doesExist()){
            b.display();
            b.move();
          }
        }
      }
      if (rounds.get(num - 1).getSize() > 0){
        if (timer % 18 == 0){
          in.get(0).get(place).exist();
          timer ++;
          place ++;
        }
        else{
          timer ++;
        }
      }
    }
    /*if (num == 2){
      for (int i = 0; i < place; i++){
        if(in.get(i).doesExist()){
        }
      }
      if (rounds.get(num - 1).getSize() > 0){
        if (timer == 0){
          in.get(place).exist();
          timer = 11;
          place ++;
        }
        else{
          timer -= 1;
        }
      }
    }
    if (num == 3){
      for (int i = 0; i < place; i++){
        if(in.get(i).doesExist()){
          in.get(i).display();
          in.get(i).move();
        }
      }
      if (rounds.get(num - 1).getSize() > 0){
        if (place < 10){
          if (timer == 0){
            in.get(place).exist();
            in.get(place).display();
            in.get(place).move();
            timer = 10;
            place ++;
          }
          else{
            timer -= 1;
          }
        }
        else if (place < 15){
          if (Math.abs(timer) < 0.01){
            in.get(place).exist();
            in.get(place).display();
            in.get(place).move();
            timer = 9;
            place ++;
          }
          else{
            timer -= 1;
          }
          if (place == 10){
            timer += float(2)/12;
          }
        }
        else if (place < 35){
          if (Math.abs(timer) < 0.01){
            in.get(place).exist();
            in.get(place).display();
            in.get(place).move();
            timer = 9;
            place ++;
          }
          else{
            timer -= 1;
          }
          if (place == 15){
            timer += float(30)/39;
          }
        }
      }
    }*/
  }
} 
