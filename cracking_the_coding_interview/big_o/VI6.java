public class VI6 {
  public static int sqrt(int n) {
    for (int guess = 1; guess * guess <= n; guess++) {
      if (guess * guess == n) {
        return guess;
      }
    }
    return -1;
  }

  public static void main(String[] args) {
    int x = sqrt(9);
    int y = sqrt(99);
    System.out.println(x);
    System.out.println(y);
  }
}

// O (sqrt(n))