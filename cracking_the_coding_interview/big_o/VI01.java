public class VI01 {
  public static int product(int a, int b) {
    int sum = 0;
    for (int i = 0; i < b; i++) {
      sum += a;
    }
    return sum;
  }
  public static void main(String[] args) {
    int x = product(3, 4);
    System.out.println(x);
  }
}

// O (b)