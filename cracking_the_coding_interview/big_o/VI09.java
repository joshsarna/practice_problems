import java.util.Arrays;

public class VI09 {
  public static int[] copyArray(int[] array) {
    int[] copy = new int[0];
    for (int value : array) {
      copy = appendToNew(copy, value);
    }
    return copy;
  }

  public static int[] appendToNew(int[] array, int value) {
    // copy all elements over to new array
    int[] bigger = new int[array.length + 1];
    for (int i = 0; i < array.length; i++) {
      bigger[i] = array[i];
    }

    // add new element
    bigger[bigger.length - 1] = value;
    return bigger;
  }

  public static void main(String[] args) {
    int[] numbers = new int[5];
    for (int i = 1; i <= 5; i++) {
      numbers[i - 1] = i;
    }
    int[] x = copyArray(numbers);
    System.out.println(Arrays.toString(x));
  }
}

// O (n ^ 2)

// the appendToNew method has a loop that runs array.length times, and that method is called array.length times by the copyArray method

// technically array.length in the appendToNew method changes for different calls to that method, but the average length of the array that's passed to it is n/2, where n is the length of the array passed to the copyArray method, so our big O is O (n ^ 2 / 2), which we simplify to O (n ^ 2)