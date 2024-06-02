import java.util.*;
public class Round{
  private int num;
  private int timer;
  private ArrayList<Bloons> in;
  private Map map;
  public Round(int n, Map m){
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
    return in.size();
  }
  public void play(){
    if (timer == 0){
      in.get(0).exist();
      in.remove(0);
      timer = 10;
    }
    else{
      timer --;
    }
  }
} 
