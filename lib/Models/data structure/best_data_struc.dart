
import 'Heap/binary_heap.dart';
import 'package:binary_tree/binary_tree.dart';

import 'array.dart';
import 'linked_list.dart';
import 'queue.dart';
import 'stack.dart';

//Global variable
var choice;

class GetChoice {
  var _choice;
  GetChoice(this._choice) {
    choice = _choice;
  }
}

class DataStruc {
  List<int> list;
  
  //create and empty list

  DataStruc(this.list);
  //decalre some clocks to get the time of differnet data structure implimentations
  var array_stopwatch = Stopwatch();
  var stack_stopwatch1 = Stopwatch();
  var queue_stopwatch2 = Stopwatch();
  var tree_stopwatch3 = Stopwatch();
  var heap_stopwatch4 = Stopwatch();
  var list_stopwatch5 = Stopwatch();
  var creation;
  String message = "";

  //impliment the best method

  List<int> best() {
    List<int> templist=[];
    //impliment array if we get choice as array

    if (choice == "array") {
     // var array = Array<int>(list.length);
      array_stopwatch.start();
      for (int i = 0; i < list.length; i++) {
      //  array[i] = list[i];
        //Now converting the data to array and this array is not growable
      }
      array_stopwatch.stop();
      creation = array_stopwatch.elapsedMicroseconds;

      message = """The best data structure for this purpose is array 
    and it take  $creation  
    microseconds to impliment this data structure 
    An array is a collection of items stored at 
    contiguous memory locations. The idea is to store
    multiple items of the same type together.
    This makes it easier to calculate the
    position of each element by simply adding
    an offset to a base value, i.e., the memory 
    location of the first element
    of the array (generally denoted by the name of the array).
    The base value is index 0 and the difference
    between the two indexes is the offset.

""";
      return list;
    }

    //Now impliment stack

    else if (choice == "stack") {
      var stack_obj = Stack<int>();
      stack_stopwatch1.start();
      for (int i = 0; i < list.length; i++) {
        stack_obj.push(list[i]);
      }
      stack_stopwatch1.stop();

      creation = stack_stopwatch1.elapsedMicroseconds;

      for (int i = 0; i < list.length; i++) {
        templist.add(stack_obj.pop());
      }

      message =
          """The best data structure  for this is stack it takes : $creation
      microseconds in implimenting this data structure. 
      A stack is an Abstract Data Type (ADT), commonly used
      in most programming languages. It is named stack as
      it behaves like a real-world stack, for example 
      – a deck of cards or a pile of plates, etc. 
      A real-world stack allows operations at one end only.
      For example, we can place or remove a card or plate 
      from the top of the stack only. Likewise, 
      Stack ADT allows all data operations at one end only.
      At any given time, we can only access the top element of a stack.
      This feature makes it LIFO data structure.
      LIFO stands for Last-in-first-out. 
      Here, the element which is placed (inserted or added) last,
      is accessed first. In stack terminology, 
      insertion operation is called PUSH operation and
      removal operation is called POP operation.

      """;

      return templist;
    }

    //Now impliment queue

    else if (choice == "que") {
      var queue = Queue<int>();

      queue_stopwatch2.start();
      for (int i = 0; i < list.length; i++) {
        queue.enqueue(list[i]);
      }

      for (int i = 0; i < list.length; i++) {
        templist.add(queue.dequeue());
        queue_stopwatch2.stop();

        creation = queue_stopwatch2.elapsed;
        message = """The best data structure for this case is queue it takes:
        $creation for its implementation.A Queue is a linear structure
         which follows a particular order in which the 
         operations are performed. The order is First In First Out (FIFO). 
         A good example of a queue is any queue of consumers
         for a resource where the consumer that came first 
         is served first. The difference between stacks and 
         queues is in removing. In a stack we remove the
         item the most recently added; in a queue, 
         we remove the item the least recently added.The adding operation is 
         enqueue()  and deleting operation is dequeue() 
        """;

        return list;
      }
    }

    //Now impliemnt BST

    else if (choice == "tree") {
      //create the tree object

      tree_stopwatch3.start();
      final myTree = BinaryTree(list);

      var temp = myTree.greaterThan(0);
      tree_stopwatch3.stop();
      creation = tree_stopwatch3.elapsedMicroseconds;
      message = """The best data structure for this purpose is BST
        it takes : $creation microseconds for its implimentations
        It is generally advantageous in keeping long
        and sorted datasets. Its advantage 
        is not noticeable on short datasets.A Binary Search
        Tree (BST) is a tree in which all the nodes 
        follow the below-mentioned properties −The value of the key of the left 
        sub-tree is less than the value of its parent (root) node's key.
        The value of the key of the right
        sub-tree is greater than or equal to the value of its parent (root) node's key.""";

      return temp;
    }
    //Now impliemtn heap

    else if (choice == "heap") {
      var heap = MaxHeap();
      templist.clear();
      heap_stopwatch4.start();
      for (int i = 0; i < list.length; i++) heap.insert(list[i]);
      heap_stopwatch4.stop();

      creation = heap_stopwatch4.elapsedMicroseconds;

      for (int i = 0; i < list.length; i++) {
        templist.add(heap.peek());
        heap.pop();
      }

      message = """The best data structure for this case is heap it takes: 
       $creation  microseconds to impliment max heap. 
        .Heap is a special case of
        balanced binary tree data structure where the 
        root-node key is compared with its children and 
        arranged accordingly. If α has child node β then −
        key (α) ≥ key(β)
        As the value of parent is greater than that 
        of child, this property generates Max Heap. 
        Based on this criteria, a heap can be of two types − Max heap and Min Heap""";

      return templist;
    } else {
      message = """The best data structure for this purpose is linked list.
 A linked list is a linear data structure, in which the elements 
 are not stored at contiguous memory locations. The elements in a
 linked list are linked using pointers.In simple words, a linked list
 consists of nodes where each node contains
 a data field and a reference(link) to the next node in the list.""";
    }

    return list;
  }

  String getmessage() {
    return message;
  }
}
