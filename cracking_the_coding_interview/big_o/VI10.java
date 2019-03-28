public class VI10 {
  public static int sumDigits(int n) {
    int sum = 0;
    while (n > 0) {
      sum += n % 10;
      n /= 10;
    }
    return sum;
  }
  public static void main(String[] args) {
    int x = sumDigits(14);
    System.out.println(x);
  }
}

// O (log n)

// This is log-base-10, although it's also log-base-2 since they're just different by a coefficient