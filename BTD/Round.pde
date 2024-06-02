import java.util.*;
public class Round{
  private int num;
  private float timer;
  private ArrayList<Bloons> in;
  private Map map;
  private int place;
  boolean done;
  public Round(int n, Map m){
    timer = 0;
    done = false;
    place = 0;
    in = new ArrayList<Bloons>();
    map = m;
    num = n;
    if (n == 1){
      for (int i = 0; i < 20; i++){
        Bloons b = new Bloons(1, map);
        in.add(b);
      }
    }
    if (n == 2){
      for (int i = 0; i < 35; i++){
        Bloons b = new Bloons(1, map);
        in.add(b);
      }
    }
    if (n == 3){
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(1, map);
        in.add(b);
      }
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(2, map);
        in.add(b);
      }
      for (int i = 0; i < 15; i++){
        Bloons b = new Bloons(1, map);
        in.add(b);
      }
    }
  }
  public ArrayList<Bloons> getIn(){
    return in;
  }
  public int getSize(){
    return in.size() - place;
  }
  public int getNum(){
    return num;
  }
  public boolean nextRound(){
    return done;
  }
  public void play(){
    if (num == 1){
      for (int i = 0; i < place; i++){
        if(in.get(i).doesExist()){
          in.get(i).display();
          in.get(i).move();
        }
      }
      if (rounds.get(num - 1).getSize() > 0){
        if (timer == 0){
          in.get(place).exist();
          in.get(place).display();
          in.get(place).move();
          timer = 18;
          place ++;
        }
        else{
          timer -= 1;
        }
      }
      else{
        done = true;
      }
    }
    if (num == 2){
      for (int i = 0; i < place; i++){
        if(in.get(i).doesExist()){
          in.get(i).display();
          in.get(i).move();
        }
      }
      if (rounds.get(num - 1).getSize() > 0){
        if (timer == 0){
          in.get(place).exist();
          in.get(place).display();
          in.get(place).move();
          timer = 11;
          place ++;
        }
        else{
          timer -= 1;
        }
      }
      else{
        done = true;
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
          println(timer + " ");
          if (place == 10){
            timer += float(1)/6;
          }
          if (Math.abs(timer - 0.01) < 0){
            in.get(place).exist();
            in.get(place).display();
            in.get(place).move();
            timer = 9;
            place ++;
          }
          else{
            timer -= 1;
          }
        }
        else if (place < 35){
          if (place == 15){
            timer += float(40)/39;
          }
          if (timer == 0){
            in.get(place).exist();
            in.get(place).display();
            in.get(place).move();
            timer = 9;
            place ++;
          }
          else{
            timer -= 1;
          }
        }
        else{
        done = true;
      }
      }
    }
  }
} 
