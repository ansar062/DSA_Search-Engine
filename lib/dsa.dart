import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class DSA extends StatefulWidget {
  const DSA({Key? key}) : super(key: key);

  @override
  State<DSA> createState() => _DSAState();
}

class _DSAState extends State<DSA> {
  
  String _url1 = 'https://www.geeksforgeeks.org/array-data-structure/';
  String _url2 = 'https://www.geeksforgeeks.org/stack-data-structure/';
  String _url3 = 'https://www.geeksforgeeks.org/queue-data-structure/';
  String _url4 = 'https://www.geeksforgeeks.org/data-structure/linked-list/';
  String _url5 = 'https://www.geeksforgeeks.org/binay-tree-data-structure/';
  String _url6 = 'https://www.geeksforgeeks.org/binay-search-tree-data-structure/?ref=ghm';
  String _url7 = 'https://www.geeksforgeeks.org/heap-data-structure/';
  String _url8 = 'https://www.geeksforgeeks.org/hashing-tree-data-structure/?ref=ghm';
  String _url9 = 'https://www.geeksforgeeks.org/graph-data-structure/';

  void _launchURL1() async {
    if (!await launch(_url1)) throw 'Could not launch $_url1';
  }
  void _launchURL2() async {
    if (!await launch(_url2)) throw 'Could not launch $_url2';
  }
  void _launchURL3() async {
    if (!await launch(_url3)) throw 'Could not launch $_url3';
  }
  void _launchURL4() async {
    if (!await launch(_url4)) throw 'Could not launch $_url4';
  }
  void _launchURL5() async {
    if (!await launch(_url5)) throw 'Could not launch $_url5';
  }
  void _launchURL6() async {
    if (!await launch(_url6)) throw 'Could not launch $_url6';
  }
  void _launchURL7() async {
    if (!await launch(_url7)) throw 'Could not launch $_url7';
  }
  void _launchURL8() async {
    if (!await launch(_url8)) throw 'Could not launch $_url8';
  }
  void _launchURL9() async {
    if (!await launch(_url9)) throw 'Could not launch $_url9';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Structure & Algorithms'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Text('For Getting more information about Arrays click here...'),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(
                color: Colors.black,
                width: 1,
              )
            ),
            margin: EdgeInsets.all(25),
            child: Center(child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 10.0,
                  )
                ]
              ),
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('Arrays'),
                onPressed: _launchURL1,
              ),
            ),),
          ),
          Text('For Getting more information about Arrays click here...'),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(
                color: Colors.black,
                width: 1,
              )
            ),
            margin: EdgeInsets.all(50),
            child: Center(child: Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('Stack'),
                onPressed: _launchURL2,
              ),),
            ),
          ),
          Text('For Getting more information about Arrays click here...'),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(
                color: Colors.black,
                width: 1,
              )
            ),
            margin: EdgeInsets.all(50),
            child: Center(child: Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('Queue'),
                onPressed: _launchURL3,
              ),),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(
                color: Colors.black,
                width: 1,
              )
            ),
            margin: EdgeInsets.all(50),
            child: Center(child: Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('Linked Lists'),
                onPressed: _launchURL4,
              ),),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(
                color: Colors.black,
                width: 1,
              )
            ),
            margin: EdgeInsets.all(50),
            child: Center(child: Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('Binary Trees'),
                onPressed: _launchURL5,
              ),),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(
                color: Colors.black,
                width: 1,
              )
            ),
            margin: EdgeInsets.all(50),
            child: Center(child: Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('Binary SearchTrees'),
                onPressed: _launchURL6,
              ),),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(
                color: Colors.black,
                width: 1,
              )
            ),
            margin: EdgeInsets.all(50),
            child: Center(child: Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('Heap'),
                onPressed: _launchURL7,
              ),),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(
                color: Colors.black,
                width: 1,
              )
            ),
            margin: EdgeInsets.all(50),
            child: Center(child: Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('Hashing'),
                onPressed: _launchURL8,
              ),),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(
                color: Colors.black,
                width: 1,
              )
            ),
            margin: EdgeInsets.all(50),
            child: Center(child: Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text('Graph'),
                onPressed: _launchURL9,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
