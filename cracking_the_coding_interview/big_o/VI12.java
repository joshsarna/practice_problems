public class VI12 {
  public static int intersection(int[] a, int[] b) {
    mergesort(b);
    int intersect = 0;

    for (int x : a) {
      if (binarySearch(b, x) >= 0) {
        intersect++;
      }
    }
    return intersect;
  }

  public static void main(String[] args) {
    int[] numbers1 = new int[5];
    for (int i = 1; i <= 5; i++) {
      numbers1[i - 1] = i;
    }

    int[] numbers2 = new int[7];
    for (int i = 4; i <= 10; i++) {
      numbers2[i - 4] = i;
    }

    int x = intersection(numbers1, numbers2);

    System.out.println(x);
  }
}

// mergesort

// this file does not run