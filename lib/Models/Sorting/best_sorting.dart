import 'dart:math';

import 'package:flutter/material.dart';


import 'bubble_sort.dart';
import 'quick_sort.dart';
import 'heap_sort.dart';
import 'selection_sort.dart';
import 'merge_sort.dart';
import 'insertion_sort.dart';
import 'package:flutter/foundation.dart';

class bestSort {
  var list = [];

  String bestalgo = "";
  var besttime;

  //this is just we create the dummy list the actual list is passed from
  //main dart and this class function best will return string
  //timing and suggest best algorithim for this case
  bestSort(this.list);

  //This function will return the message which is best sorting technique on
  // on the basis of time taken in its execution
  String best() {
    String message = "";
    String message2 = "";

    //first we create a stop watches

    var stopwatch = Stopwatch();
     var stopwatch1 = Stopwatch();
      var stopwatch2 = Stopwatch();
       var stopwatch3 = Stopwatch();
        var stopwatch4 = Stopwatch();
         var stopwatch5 = Stopwatch();
    
       var temp;

    
      stopwatch.start();
      BubbleSort(list);
      stopwatch.stop();
      besttime = stopwatch.elapsedMicroseconds;
      //Now assume and set the best timing to bubble sort timing
      //and best algo to bubble sort

      bestalgo = "bubble Sort";
    
    //Now test the insertion sort
    stopwatch1.start();
    InsertionSort(list);
    stopwatch1.stop();

    temp = stopwatch1.elapsedMicroseconds;

    if (temp<besttime) {
      bestalgo = "insertion sort";
      besttime = temp;
    
    }

    //Now test the selection sort
    stopwatch2.start();
    SelectionSort(list);
    stopwatch2.stop();

    temp = stopwatch2.elapsedMicroseconds;

    if (temp < besttime) {
      bestalgo = "selection sort";
      besttime = temp;
      
    }

    //Now test the heap sort
    stopwatch3.start();
    HeapSort(list);
    stopwatch3.stop();

    temp = stopwatch3.elapsedMicroseconds;

    if (temp < besttime) {
      bestalgo = "heap Sort ";
      besttime = temp;
      
    }

    //Now test the quick sort
    stopwatch4.start();
    Quicksorting(list);
    stopwatch4.stop();

    temp = stopwatch4.elapsedMicroseconds;

    if (temp < besttime) {
      bestalgo = "Quick   sort";
      besttime = temp;
      
    }

    //Now test the merge sort
    stopwatch5.start();
    MergeSort(list);
    stopwatch5.stop();

    temp = stopwatch5.elapsedMicroseconds;

    
    if (temp < besttime) {
      bestalgo = "Merge sort";
      besttime = temp;
    }

    message = '''The best sorting technique for this purpose is $bestalgo &
                 it takes $besttime microseconds   ''';

    return message;
  }
}
