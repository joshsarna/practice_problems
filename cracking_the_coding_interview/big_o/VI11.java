public class VI11  {
  public static void printSortedStrings(int remaining) {
    printSortedStrings(remaining, "");
  }

  public static void printSortedStrings(int remaining, String prefix) {
    if (remaining == 0) {
      if (isInOrder(prefix)) {
        System.out.println(prefix);
      }
    } else {
      for (char c = 'a'; c <= 'z'; c++) {
        printSortedStrings(remaining - 1, prefix + c);
      }
    }
  }

  public static boolean isInOrder(String s) {
    boolean isInOrder = true;
    for (int i = 1; i < s.length(); i++) {
      int prev = s.charAt(i - 1);
      int curr = s.charAt(i);
      if (prev > curr) {
        isInOrder = false;
      }
    }
    return isInOrder;
  }

  public static void main(String[] args) {
    printSortedStrings(2);
  }
}

// O (n * 26 ^ n)

// printSortedStrings with one parameter is called once; printSortedStrings with two parameters calls itself recursively, making a tree of steps with a depth of n and each node except the leaves having 26 children; That's 26 ^ n times, and each time it calls isInOrder, which takes n steps

// NOTE: I changed ithLetter(s.charAt(i)) to just s.charAt(i); I'm not sure what ithLetter is.