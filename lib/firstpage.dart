import 'package:file_picker/file_picker.dart';
import 'package:finaldsa/dsa.dart';
import 'package:finaldsa/help.dart';
import 'package:finaldsa/settingspage.dart';
import 'package:finaldsa/thirdpage.dart';

import 'package:flutter/material.dart';

import 'package:open_file/open_file.dart';

import 'secondpage.dart';
import 'dart:io';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

List<int> list = [20, 30, 59, 60, 70, 23, 34, 25, 26, 25, 27];

class _FirstPageState extends State<FirstPage> {
  void picker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    //file got picked

    if (result != null) {
      //This will pass list to second page
      print(list);
      getDataList_three(list);

      getDataList(list);
    }

    setState(() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SecondPageFinal()));
    });
  }

  // void openfile(PlatformFile file) {
  //   OpenFile.open(file.path!);
  // }
  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SettingsPage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Helper()),
        );
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DSA()));
    }
  }

  final urlImage =
      'https://miro.medium.com/max/1300/1*njvNP49632naRWy_DPxDbQ.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('DSA Search Engine'),
          centerTitle: true,
          actions: [
            Container(
              //color: Colors.black,
              child: PopupMenuButton<int>(
                  onSelected: (item) => onSelected(context, item),
                  itemBuilder: (context) => [
                        PopupMenuItem<int>(
                          child: Text('Settings'),
                          value: 0,
                        ),
                        PopupMenuItem<int>(
                          child: Text('Help'),
                          value: 1,
                        ),
                        PopupMenuItem<int>(
                          child: Text('DSA'),
                          value: 2,
                        )
                      ]),
            ),
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                  (Route<dynamic> route) => false,
                );
              },
              icon: Icon(Icons.home))),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(urlImage),
                  //image: ImageProvider('assets/C:/Users/ss computer/OneDrive/Desktop/DSA.png'),
                  fit: BoxFit.none)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.black54,
                margin: EdgeInsets.all(250),
                child: Container(
                  //color: Colors.blue,
                  margin:
                      EdgeInsets.only(left: 50, top: 10, bottom: 10, right: 50),
                  child: ElevatedButton(
                    child: Text('Pick File!'),
                    onPressed: () {
                      picker();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondPageFinal()));
                    },
                  ),
                ),
              ),
              Card(
                  child: Container(
                child: Text(
                    'WELCOME! To Our Data Structure And Algorithms Search Engine'),
                margin: EdgeInsets.all(50),
                alignment: Alignment.center,
              )),
              Card(
                color: Colors.blueGrey,
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Text('This Will Help You Find Best Algorithms'),
                  margin: EdgeInsets.all(50),
                  alignment: Alignment.center,
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomRight,
              //   child: ElevatedButton(
              //       child: Text('Next'),
              //       onPressed: () => Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => const SecondPage()))),
              // )
              // ElevatedButton(onPressed: () => {
              //   final file = result.files.first;
              //   openfile(),}, child: Text('OpenFile'))
            ],
          )),
    );
  }
}
