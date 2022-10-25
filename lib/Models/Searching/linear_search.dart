class LinearSearch {
  List arr;
  int search;
  //construtor
  LinearSearch({required this.arr, required this.search});

  int linearSearch() {
    int index = -1;
    //set the index temporarily to -1 in case if value not found -1 will
    // be returned
    
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == search) {
        index = i;
      }
    }
    return index;
  }
}
