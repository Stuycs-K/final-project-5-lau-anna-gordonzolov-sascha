import java.util.*;
public class Round{
  private int num;
  private float timer;
  private ArrayList<Bloons> in;
  private Map map;
  private int place;
  boolean done;
  public Round(int n, Map m){
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
  }
  public ArrayList<Bloons> getIn(){
    return in;
  }
  public int getSize(){
    return in.size() - place;
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
      if (rounds.get(0).getSize() > 0){
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
      if (rounds.get(0).getSize() > 0){
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
    }
  }
} 
