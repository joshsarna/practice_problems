public class VI03 {
  public static int mod(int a, int b) {
    if (b <= 0) {
      return -1;
    }
    int div = a / b;
    return a - div * b;
  }
  public static void main(String[] args) {
    int x = mod(4, 3);
    System.out.println(x);
  }
}

// O (1)