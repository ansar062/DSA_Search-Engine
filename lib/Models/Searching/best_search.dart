import 'dart:math';


import 'binary_search.dart';
import 'linear_search.dart';

class BestSearch {
  var list = [];

  //this is just we create the dummy list the actual list is passed from
  //main dart and this class function best will return string
  //timing and suggest best algorithim for this case
  BestSearch(this.list);

  String best(int value) {
    String message = "";
    int index1, index2;
    int search1, search2;
    var search = LinearSearch(arr: list, search: value);
    var stopwatch = Stopwatch();
    var stopwatch1 = Stopwatch();

    stopwatch.start();

    index1 = search.linearSearch();

    stopwatch.stop();
    search1 = stopwatch.elapsedMicroseconds;

    stopwatch.start();

    var bsearch = BinarySearch(arr: list, userValue: value);
    stopwatch1.start();
    index2 = bsearch.binarySearch(0, list.length);
    stopwatch1.stop();

    search2 = stopwatch1.elapsedMicroseconds;
    if (index1 != -1 || index2 != -1) {
      if (search1 > search2) {
        message = '''The best search for this case is binary
       search it takes $search2 microseconds & the value is found at $index2 ''';
      } else {
        message = '''The best search for this case is binary
       search it takes $search1 microseconds & the value is found at $index1 ''';
      }
    } else {
      message = """The value is not found it  
         takes $search2 microsecnods for bianry search && $search1 microseconds for
         linear search """;
    }

    return message;
  }
}
