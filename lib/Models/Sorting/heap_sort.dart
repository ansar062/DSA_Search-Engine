class HeapSort {
  List list;

  // constructor
  HeapSort(this.list) {
    heapSort();
  }

  void _heapify(List list, int n, int i) {
    int largest = i;
    int l = 2 * i + 1;
    int r = 2 * i + 2;

    if (l < n && list[l] > list[largest]) {
      largest = l;
    }

    if (r < n && list[r] > list[largest]) {
      largest = r;
    }

    if (largest != i) {
      _swapList(list, i, largest);
      _heapify(list, n, largest);
    }
  }

  void _swapList(List list, int i, int largest) {
    int swap = list[i];
    list[i] = list[largest];
    list[largest] = swap;
  }

  void heapSort() {
    int n = list.length-1;
    for (int i = (n ~/ 2); i >= 0; i--) {
      _heapify(list, n, i);
    }

    for (int i = n - 1; i >= 0; i--) {
      _swap(list, i);
      _heapify(list, i, 0);
    }
  }

  void _swap(List list, int i) {
    int temp = list[0];
    list[0] = list[i];
    list[i] = temp;
  }
}
