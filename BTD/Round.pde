import java.util.*;
public class Round{
  private int num;
  private int timer;
  private boolean play;
  private ArrayList<ArrayList<Bloons>> in;
  private Map map;
  private ArrayList<Integer> place;
  public Round(int n, Map m){
    timer = 0;
    map = m;
    num = n;
    if (n == 1){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(1, null));
      place = new ArrayList<Integer>(Collections.nCopies(1, 0));
      place.set(0, 0);
      ArrayList<Bloons> temp = new ArrayList<Bloons>();
      for (int i = 0; i < 20; i++){
        Bloons b = new Bloons(1, map);
        temp.add(b);
      }
      in.set(0, temp);
    }
    if (n == 2){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(1, null));
      place = new ArrayList<Integer>(Collections.nCopies(1, 0));
      place.set(0, 0);
      ArrayList<Bloons> temp = new ArrayList<Bloons>();
      for (int i = 0; i < 35; i++){
        Bloons b = new Bloons(1, map);
        temp.add(b);
      }
      in.set(0, temp);
    }
    if (n == 3){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(3, null));
      place = new ArrayList<Integer>(Collections.nCopies(3, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(1, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(5);
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(2, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(15);
      for (int i = 0; i < 15; i++){
        Bloons b = new Bloons(1, map);
        temp3.add(b);
      }
      in.set(2, temp3);
    }
  }
  public ArrayList<ArrayList<Bloons>> getIn(){
    return in;
  }
  public int getSize(){
    int size = 0;
    for (int i = 0; i < place.size(); i++){
      size += in.size() - place.get(i);
    }
    return size;
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
          if (b.doesExist() && b.atEnd()){
            map.minus(b.getValue());
            b.level(0);
          }
        }
      }
      if (timer < 360){
        if (timer % 18 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      timer++;
    }
    if (num == 2){
      for (ArrayList<Bloons> bb : in){
        for (Bloons b : bb){  
          if(b.doesExist()){
            b.display();
            b.move();
          }
          if (b.doesExist() && b.atEnd()){
            map.minus(b.getValue());
            b.level(0);
          }
        }
      }
      if (timer < 380){
        if (timer % 11 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      timer++;
    }
    if (num == 3){
      for (ArrayList<Bloons> bb : in){
        for (Bloons b : bb){  
          if(b.doesExist()){
            b.display();
            b.move();
          }
          if (b.doesExist() && b.atEnd()){
            map.minus(b.getValue());
            b.level(0);
          }
        }
      }
      if (timer < 10 * 10){
        if (timer % 10 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 114 && timer < (114 + 9 * 5)){
        if((timer - 114) % 9 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 194 && timer < (194 + 9 * 15)){
        if ((timer - 194) % 9 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      timer++;
    }
  }
} 
