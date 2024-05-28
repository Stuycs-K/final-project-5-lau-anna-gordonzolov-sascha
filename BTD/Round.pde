public class Round{
  //like contains bloons
  private int num = 1;
  private Bloons[] in;
  private Map map;
  private int countdown = 0; //some timer based on ticks to move the bloons
  public Round(int n){
    num = n;
    Bloons one = new Bloons(1, map);
    in = new Bloons[]{one};
  }
  void mve(){ //should run always - isn't now
    if (countdown == 0){
      for (Bloons i : in){
        i.move();
        countdown += 60;
      }
    }
    else{
       countdown --;
    }
}
}
