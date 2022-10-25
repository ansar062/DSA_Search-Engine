class MergeSort {
  List list;

  MergeSort(this.list) {
    _mergeSort(list, 0, list.length-1);
  }

  void _merge(List list, int leftIndex, int middleIndex, int rightIndex) {
    int leftSize = middleIndex - leftIndex + 1;
    int rightSize = rightIndex - middleIndex;

    List leftList = newMethod(leftSize);
    List rightList = newMethod(rightSize);

    for (int i = 0; i < leftSize; i++) {
      leftList[i] = list[leftIndex + i];
    }
    for (int j = 0; j < rightSize; j++) {
      rightList[j] = list[middleIndex + j + 1];
    }

    int i = 0, j = 0;
    int k = leftIndex;

    while (i < leftSize && j < rightSize) {
      if (leftList[i] <= rightList[j]) {
        list[k] = leftList[i];
        i++;
      } else {
        list[k] = rightList[j];
        j++;
      }
      k++;
    }

    while (i < leftSize) {
      list[k] = leftList[i];
      i++;
      k++;
    }

    while (j < rightSize) {
      list[k] = rightList[j];
      j++;
      k++;
    }
  }

  //create the empty list with the zero filled values
  List<dynamic> newMethod(int leftSize) => List.filled(leftSize, 0);

  void _mergeSort(List list, int leftIndex, int rightIndex) {
    if (leftIndex < rightIndex) {
      int middleIndex = (rightIndex + leftIndex) ~/ 2;

      _mergeSort(list, leftIndex, middleIndex);
      _mergeSort(list, middleIndex + 1, rightIndex);

      _merge(list, leftIndex, middleIndex, rightIndex);
    }
  }
}
