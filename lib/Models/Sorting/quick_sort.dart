class Quicksorting {
  List list;
  Quicksorting(this.list) {
    _quickSort(list, 0, list.length-1);
  }

  void _swap(List list, int i, int j) {
    int temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }

  int _partition(list, int low, int high) {
    int pivot = list[high];
    int i = low - 1;

    for (int j = low; j < high; j++) {
      if (list[j] <= pivot) {
        i++;
        _swap(list, i, j);
      }
      _swap(list, i + 1, high);
    }
    return i + 1;
  }

  void _quickSort(List list, int low, int high) {
    if (low < high) {
      int pi = _partition(list, low, high);
      _quickSort(list, low, pi - 1);
      _quickSort(list, pi + 1, high);
    }
  }
}
