import java.util.*;
public class Round{
  private int num;
  private int timer;
  private ArrayList<Bloons> in;
  private Map map;
  private int place;
  public Round(int n, Map m){
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
  public int getSize(){
    return in.size() - place;
  }
  public void play(){
    for (int i = 0; i < place; i++){
      in.get(i).display();
      in.get(i).move();
    }
    if (rounds.get(0).getSize() > 0){
      if (timer == 0){
        in.get(place).display();
        in.get(place).move();
        timer = 10;
        place ++;
      }
      else{
        timer --;
      }
    }
  }
} 
