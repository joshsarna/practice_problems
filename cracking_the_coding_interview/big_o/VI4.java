public class VI4 {
  public static int div(int a, int b) {
    int count = 0;
    int sum = b;
    while (sum <= a) {
      sum += b;
      count++;
    }
    return count;
  }
  public static void main(String[] args) {
    int x = div(14, 3);
    System.out.println(x);
  }
}

// O (a/b)