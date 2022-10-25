class BinarySearch {
  List arr;
  int userValue;

  BinarySearch({required this.arr, required this.userValue}) {
    //this will sort the array first

    if (arr.isEmpty) return;
    int n = arr.length;
    int temp, i, j;

    for (i = 1; i < n - 1; i++) {
      temp = arr[i];
      print(i);
      j = i - 1;
      while (j >= 0 && temp < arr[j]) {
        arr[j + 1] = arr[j];
        --j;
      }
      arr[j + 1] = temp;
    }
  }

  int binarySearch(int min, int max) {
    int index = -1;
    //index is set to -1 in case value is not found
    if (max >= min) {
      int mid = ((max + min) / 2).floor();
      if (userValue == arr[mid]) {
        index = mid;
      } else if (userValue > arr[mid]) {
        binarySearch(mid + 1, max);
      } else {
        binarySearch(min, mid - 1);
      }
    }
    return index;
  }
}
