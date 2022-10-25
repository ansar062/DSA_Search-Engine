class BubbleSort {
  List list;
  BubbleSort(this.list) {
    bubbleSort();
  }
  void bubbleSort() {
    if (list.isEmpty) return;

    int n = list.length;
    int i, step;
    for (step = 0; step < n; step++) {
      for (i = 0; i < n - step - 1; i++) {
        if (list[i] > list[i + 1]) {
          _swap(list, i);
        }
      }
    }
  }

  void _swap(List list, int i) {
    int temp = list[i];
    list[i] = list[i + 1];
    list[i + 1] = temp;
  }
}
