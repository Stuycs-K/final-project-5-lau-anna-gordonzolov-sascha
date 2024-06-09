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
        Bloons b = new Bloons(14, map);
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
    if (n == 4){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(3, null));
      place = new ArrayList<Integer>(Collections.nCopies(3, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(25);
      for (int i = 0; i < 25; i++){
        Bloons b = new Bloons(1, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(18);
      for (int i = 0; i < 18; i++){
        Bloons b = new Bloons(2, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(1, map);
        temp3.add(b);
      }
      in.set(2, temp3);
    }
    if (n == 5){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(3, null));
      place = new ArrayList<Integer>(Collections.nCopies(3, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(12);
      for (int i = 0; i < 12; i++){
        Bloons b = new Bloons(2, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(5);
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(1, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(15);
      for (int i = 0; i < 15; i++){
        Bloons b = new Bloons(2, map);
        temp3.add(b);
      }
      in.set(2, temp3);
    }
    if (n == 6){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(3, null));
      place = new ArrayList<Integer>(Collections.nCopies(3, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(4);
      for (int i = 0; i < 4; i++){
        Bloons b = new Bloons(3, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(15);
      for (int i = 0; i < 15; i++){
        Bloons b = new Bloons(1, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(15);
      for (int i = 0; i < 15; i++){
        Bloons b = new Bloons(2, map);
        temp3.add(b);
      }
      in.set(2, temp3);
    }
    if (n == 7){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(4, null));
      place = new ArrayList<Integer>(Collections.nCopies(4, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(2, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(5);
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(3, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(20);
      for (int i = 0; i < 20; i++){
        Bloons b = new Bloons(1, map);
        temp3.add(b);
      }
      in.set(2, temp3);
      ArrayList<Bloons> temp4 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(2, map);
        temp4.add(b);
      }
      in.set(3, temp4);
    }
    if (n == 8){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(4, null));
      place = new ArrayList<Integer>(Collections.nCopies(4, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(20);
      for (int i = 0; i < 20; i++){
        Bloons b = new Bloons(2, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(2);
      for (int i = 0; i < 2; i++){
        Bloons b = new Bloons(3, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(1, map);
        temp3.add(b);
      }
      in.set(2, temp3);
      ArrayList<Bloons> temp4 = new ArrayList<Bloons>(12);
      for (int i = 0; i < 12; i++){
        Bloons b = new Bloons(3, map);
        temp4.add(b);
      }
      in.set(3, temp4);
    }
    if (n == 9){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(1, null));
      place = new ArrayList<Integer>(Collections.nCopies(1, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(30);
      for (int i = 0; i < 30; i++){
        Bloons b = new Bloons(3, map);
        temp1.add(b);
      }
      in.set(0, temp1);
    }
    if (n == 10){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(3, null));
      place = new ArrayList<Integer>(Collections.nCopies(3, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(60);
      for (int i = 0; i < 60; i++){
        Bloons b = new Bloons(2, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(20);
      for (int i = 0; i < 20; i++){
        Bloons b = new Bloons(2, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(22);
      for (int i = 0; i < 22; i++){
        Bloons b = new Bloons(2, map);
        temp3.add(b);
      }
      in.set(2, temp3);
    }
    if (n == 11){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(4, null));
      place = new ArrayList<Integer>(Collections.nCopies(4, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(3);
      for (int i = 0; i < 3; i++){
        Bloons b = new Bloons(4, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(12);
      for (int i = 0; i < 12; i++){
        Bloons b = new Bloons(3, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(2, map);
        temp3.add(b);
      }
      in.set(2, temp3);
      ArrayList<Bloons> temp4 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(1, map);
        temp4.add(b);
      }
      in.set(3, temp4);
    }
    if (n == 12){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(3, null));
      place = new ArrayList<Integer>(Collections.nCopies(3, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(3, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(15);
      for (int i = 0; i < 15; i++){
        Bloons b = new Bloons(2, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(5);
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(4, map);
        temp3.add(b);
      }
      in.set(2, temp3);
    }
    if (n == 13){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(2, null));
      place = new ArrayList<Integer>(Collections.nCopies(2, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(50);
      for (int i = 0; i < 50; i++){
        Bloons b = new Bloons(2, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(23);
      for (int i = 0; i < 23; i++){
        Bloons b = new Bloons(3, map);
        temp2.add(b);
      }
      in.set(1, temp2);
    }
    if (n == 14){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(8, null));
      place = new ArrayList<Integer>(Collections.nCopies(8, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(18);
      for (int i = 0; i < 18; i++){
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
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(5);
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(3, map);
        temp3.add(b);
      }
      in.set(2, temp3);
      ArrayList<Bloons> temp4 = new ArrayList<Bloons>(4);
      for (int i = 0; i < 4; i++){
        Bloons b = new Bloons(4, map);
        temp4.add(b);
      }
      in.set(3, temp4);
      ArrayList<Bloons> temp5 = new ArrayList<Bloons>(31);
      for (int i = 0; i < 31; i++){
        Bloons b = new Bloons(1, map);
        temp5.add(b);
      }
      in.set(4, temp5);
      ArrayList<Bloons> temp6 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(2, map);
        temp6.add(b);
      }
      in.set(5, temp6);
      ArrayList<Bloons> temp7 = new ArrayList<Bloons>(5);
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(3, map);
        temp7.add(b);
      }
      in.set(6, temp7);
      ArrayList<Bloons> temp8 = new ArrayList<Bloons>(5);
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(4, map);
        temp8.add(b);
      }
      in.set(7, temp8);
    }
    if (n == 15){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(5, null));
      place = new ArrayList<Integer>(Collections.nCopies(5, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(20);
      for (int i = 0; i < 20; i++){
        Bloons b = new Bloons(1, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(15);
      for (int i = 0; i < 15; i++){
        Bloons b = new Bloons(2, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(12);
      for (int i = 0; i < 12; i++){
        Bloons b = new Bloons(3, map);
        temp3.add(b);
      }
      in.set(2, temp3);
      ArrayList<Bloons> temp4 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(4, map);
        temp4.add(b);
      }
      in.set(3, temp4);
      ArrayList<Bloons> temp5 = new ArrayList<Bloons>(5);
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(5, map);
        temp5.add(b);
      }
      in.set(4, temp5);
    }
    if (n == 16){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(3, null));
      place = new ArrayList<Integer>(Collections.nCopies(3, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(20);
      for (int i = 0; i < 20; i++){
        Bloons b = new Bloons(3, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(20);
      for (int i = 0; i < 20; i++){
        Bloons b = new Bloons(3, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(8);
      for (int i = 0; i < 8; i++){
        Bloons b = new Bloons(4, map);
        temp3.add(b);
      }
      in.set(2, temp3);
    }
    if (n == 17){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(1, null));
      place = new ArrayList<Integer>(Collections.nCopies(1, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(12);
      for (int i = 0; i < 12; i++){
        Bloons b = new Bloons(4, map);
        temp1.add(b);
      }
      in.set(0, temp1);
    }
    if (n == 18){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(2, null));
      place = new ArrayList<Integer>(Collections.nCopies(2, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(60);
      for (int i = 0; i < 60; i++){
        Bloons b = new Bloons(3, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(20);
      for (int i = 0; i < 20; i++){
        Bloons b = new Bloons(3, map);
        temp2.add(b);
      }
      in.set(1, temp2);
    }
    if (n == 19){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(4, null));
      place = new ArrayList<Integer>(Collections.nCopies(4, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(10);
      for (int i = 0; i < 10; i++){
        Bloons b = new Bloons(3, map);
        temp1.add(b);
      }
      in.set(0, temp1);
      ArrayList<Bloons> temp2 = new ArrayList<Bloons>(5);
      for (int i = 0; i < 5; i++){
        Bloons b = new Bloons(4, map);
        temp2.add(b);
      }
      in.set(1, temp2);
      ArrayList<Bloons> temp3 = new ArrayList<Bloons>(15);
      for (int i = 0; i < 15; i++){
        Bloons b = new Bloons(5, map);
        temp3.add(b);
      }
      in.set(2, temp3);
      ArrayList<Bloons> temp4 = new ArrayList<Bloons>(4);
      for (int i = 0; i < 4; i++){
        Bloons b = new Bloons(4, map);
        temp4.add(b);
      }
      in.set(3, temp4);
    }
    if (n == 20){
      in = new ArrayList<ArrayList<Bloons>>(Collections.nCopies(1, null));
      place = new ArrayList<Integer>(Collections.nCopies(1, 0));
      ArrayList<Bloons> temp1 = new ArrayList<Bloons>(6);
      for (int i = 0; i < 6; i++){
        Bloons b = new Bloons(6, map);
        temp1.add(b);
      }
      in.set(0, temp1);
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
    if (num == 4){
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
      if (timer < 12 * 20){
        if (timer % 24 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 158 && timer < (158 + 3 * 18)){
        if((timer - 158) % 3 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 290 && timer < (290 + 6 * 10)){
        if ((timer - 290) % 6 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      timer++;
    }
    if (num == 5){
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
      if (timer < 9 * 12){
        if (timer % 9 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 114 && timer < (114 + 5 * 9)){
        if((timer - 114) % 9 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 172 && timer < (172 + 11 * 15)){
        if ((timer - 172) % 11 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      timer++;
    }
    if (num == 6){
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
      if (timer < 9 * 4){
        if (timer % 9 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 107 && timer < (107 + 15 * 7)){
        if((timer - 107) % 7 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 216 && timer < (172 + 11 * 15)){
        if ((timer - 216) % 11 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      timer++;
    }
    if (num == 7){
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
      if (timer >= 114 && timer < (114 + 5 * 20)){
        if((timer - 114) % 20 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 236 && timer < (236 + 20 * 11)){
        if ((timer - 236) % 11 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      if (timer >= 456 && timer < (456 + 10 * 8)){
        if ((timer - 456) % 8 == 0){
          in.get(3).get(place.get(3)).exist();
          place.set(3, place.get(3) + 1);
        }
      }
      timer++;
    }
    if (num == 8){
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
      if (timer < 11 * 20){
        if (timer % 11 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 228 && timer < (228 + 2 * 6)){
        if((timer - 228) % 6 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 281 && timer < (281 + 10 * 8)){
        if ((timer - 281) % 8 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      if (timer >= 365 && timer < (365 + 12 * 18)){
        if ((timer - 365) % 18 == 0){
          in.get(3).get(place.get(3)).exist();
          place.set(3, place.get(3) + 1);
        }
      }
      timer++;
    }
    if (num == 9){
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
      if (timer < 30 * 13){
        if (timer % 13 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      timer++;
    }
    if (num == 10){
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
      if (timer < 60 * 12){
        if (timer % 12 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 700 && timer < (700 + 20 * 9)){
        if((timer - 700) % 9 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 880 && timer < (880 + 22 * 4)){
        if ((timer - 281) % 4 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      timer++;
    }
    if (num == 11){
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
      if (timer < 3 * 7){
        if (timer % 7 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 89 && timer < (89 + 12 * 5)){
        if((timer - 89) % 5 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 217 && timer < (217 + 10 * 8)){
        if ((timer - 217) % 8 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      if (timer >= 292 && timer < (292 + 10 * 9)){
        if ((timer - 292) % 9 == 0){
          in.get(3).get(place.get(3)).exist();
          place.set(3, place.get(3) + 1);
        }
      }
      timer++;
    }
    if (num == 12){
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
      if (timer >= 114 && timer < (114 + 15 * 8)){
        if((timer - 114) % 8 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 285 && timer < (285 + 5 * 12)){
        if ((timer - 285) % 12 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      timer++;
    }
    if (num == 13){
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
      if (timer < 50 * 12){
        if (timer % 12 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 44 && timer < (44 + 23 * 26)){
        if((timer - 44) % 26 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      timer++;
    }
    if (num == 14){
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
      if (timer < 18 * 11){
        if (timer % 11 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 57 && timer < (57 + 5 * 5)){
        if((timer - 57) % 5 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 114 && timer < (114 + 5 * 4)){
        if ((timer - 114) % 4 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      if (timer >= 171 && timer < (171 + 4 * 5)){
        if ((timer - 171) % 5 == 0){
          in.get(3).get(place.get(3)).exist();
          place.set(3, place.get(3) + 1);
        }
      }
      if (timer >= 190 && timer < (190 + 31 * 11)){
        if ((timer - 190) % 11 == 0){
          in.get(4).get(place.get(4)).exist();
          place.set(4, place.get(4) + 1);
        }
      }
      if (timer >= 319 && timer < (319 + 10 * 3)){
        if((timer - 319) % 3 == 0){
          in.get(5).get(place.get(5)).exist();
          place.set(5, place.get(5) + 1);
        }
      }
      if (timer >= 397 && timer < (397 + 5 * 6)){
        if ((timer - 397) % 6 == 0){
          in.get(6).get(place.get(6)).exist();
          place.set(6, place.get(6) + 1);
        }
      }
      if (timer >= 474 && timer < (474 + 5 * 6)){
        if ((timer - 474) % 6 == 0){
          in.get(7).get(place.get(7)).exist();
          place.set(7, place.get(7) + 1);
        }
      }
      timer++;
    }
    if (num == 15){
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
      if (timer < 20 * 25){
        if (timer % 25 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 56 && timer < (56 + 15 * 27)){
        if((timer - 56) % 27 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 114 && timer < (114 + 12 * 25)){
        if ((timer - 114) % 25 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      if (timer >= 177 && timer < (177 + 10 * 24)){
        if ((timer - 177) % 24 == 0){
          in.get(3).get(place.get(3)).exist();
          place.set(3, place.get(3) + 1);
        }
      }
      if (timer >= 351 && timer < (351 + 5 * 12)){
        if ((timer - 351) % 12 == 0){
          in.get(4).get(place.get(4)).exist();
          place.set(4, place.get(4) + 1);
        }
      }
      timer++;
    }
    if (num == 16){
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
      if (timer < 20 * 11){
        if (timer % 11 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 4 && timer < (4 + 20 * 11)){
        if((timer - 4) % 11 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 292 && timer < (292 + 8 * 4)){
        if ((timer - 292) % 4 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      timer++;
    }
    if (num == 17){
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
      if (timer < 12 * 8){
        if (timer % 8 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      timer++;
    }
    if (num == 18){
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
      if (timer < 60 * 8){
        if (timer % 8 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 500 && timer < (500 + 20 * 2)){
        if((timer - 500) % 2 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      timer++;
    }
    if (num == 19){
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
      if (timer < 10 * 6){
        if (timer % 6 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      if (timer >= 57 && timer < (57 + 5 * 9)){
        if((timer - 57) % 9 == 0){
          in.get(1).get(place.get(1)).exist();
          place.set(1, place.get(1) + 1);
        }
      }
      if (timer >= 119 && timer < (119 + 15 * 10)){
        if ((timer - 119) % 10 == 0){
          in.get(2).get(place.get(2)).exist();
          place.set(2, place.get(2) + 1);
        }
      }
      if (timer >= 270 && timer < (270 + 4 * 11)){
        if ((timer - 270) % 11 == 0){
          in.get(3).get(place.get(3)).exist();
          place.set(3, place.get(3) + 1);
        }
      }
      timer++;
    }
    if (num == 20){
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
      if (timer < 6 * 18){
        if (timer % 18 == 0){
          in.get(0).get(place.get(0)).exist();
          place.set(0, place.get(0) + 1);
        }
      }
      timer++;
    }
  }
} 
