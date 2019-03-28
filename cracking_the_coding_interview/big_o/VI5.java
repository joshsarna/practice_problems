public class VI5 {
  public static int sqrt(int n) {
    return sqrt_helper(n, 1, n);
  }

  public static int sqrt_helper(int n, int min, int max) {
    if (max < min) return -1; // no square root

    int guess = (min + max) / 2;
    if (guess * guess == n) { // found it!
      return guess;
    } else if (guess * guess < n) { // too low
      return sqrt_helper(n, guess + 1, max); // try higher
    } else { // too high
      return sqrt_helper(n, min, guess - 1); // try lower
    }
  }

  public static void main(String[] args) {
    int x = sqrt(9);
    int y = sqrt(99);
    System.out.println(x);
    System.out.println(y);
  }
}

// O (log n)