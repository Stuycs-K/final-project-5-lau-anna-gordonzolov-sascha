import java.util.*;
public class Round{
  private int num = 1;
  private Bloons[] in;
  private Map map;
  public Round(int n){
    num = n;
    Bloons one = new Bloons(1, map);
    in = new Bloons[]{one};
  }
}
