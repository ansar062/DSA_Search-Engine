import 'package:finaldsa/Models/data%20structure/best_data_struc.dart';
import 'package:flutter/material.dart';

List<int> globalList = [];
int counter = 0;
String message = "";

//This class is used to get data from first page
class getDataList_three {
  var dataList;
  
  getDataList_three(this.dataList) {
    globalList = dataList;
    print(globalList);
  }
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  String _choice = '';
  var list;
  int number = 0;
  int limit = globalList.length;
  bool isButtonActive = false;
  bool isPressed = false;

  get eCtrl => null;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Structures'),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body:
            // Padding(
            //   padding: const EdgeInsets.all(25),child:
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Please Select any  approach for data traversal ' ,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16)),
            ListTile(
              leading: Radio<String>(
                  value: 'que',
                  groupValue: _choice,
                  onChanged: (value) {
                    setState(() {
                      _choice = value!;
                    });
                  }),
              title: const Text('First In First out (oldest)'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'stack',
                groupValue: _choice,
                onChanged: (value) {
                  setState(() {
                    _choice = value!;
                  });
                },
              ),
              title: const Text('Last In first out (recent) '),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'array',
                groupValue: _choice,
                onChanged: (value) {
                  setState(() {
                    _choice = value!;
                  });
                },
              ),
              title: const Text('The data will not grow or shrink '),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'list',
                groupValue: _choice,
                onChanged: (value) {
                  setState(() {
                    _choice = value!;
                  });
                },
              ),
              title: const Text('The data will grow or shrink dynamically'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'tree',
                groupValue: _choice,
                onChanged: (value) {
                  setState(() {
                    _choice = value!;
                  });
                },
              ),
              title: const Text(
                  'Want insertion,deletion in O(log n) time and want sorted data set '),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'heap',
                groupValue: _choice,
                onChanged: (value) {
                  setState(() {
                    _choice = value!;
                  });
                },
              ),
              title: const Text(
                  'To remove the data with highest or lowest priority'),
            ),
            Center(
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        color: Colors.grey[100],
                        height: 150,
                        width: 550,
                        child: LayoutBuilder(builder: (context, constraints) {
                          isButtonActive = true;
                          GetChoice(_choice);

                          var struc = DataStruc(globalList);

                          globalList = struc.best();

                          message = struc.getmessage();

                          if (counter == 0)
                            message =
                                "Please select any option from above to see results here";

                          counter++;

                          print(globalList);

                          return Text(message);
                        })),
                  ],
                ),
              ),
            ),

            Center(
              child: ElevatedButton(
                onPressed: isButtonActive
                    ? () {
                        setState(() {
                          isPressed = true;
                          //                   Navigator.push(context,
                          // MaterialPageRoute(builder: (context) => Listing()));
                        });
                      }
                    : null,
                child: Text('Display'),
              ),
            ),
            //
            // new TextField(
            //   //controller: eCtrl,
            //   onSubmitted: (text) {
            //     items.add(text);
            //     // eCtrl.clear();
            //     setState(() {});
            //   },
            // ),
            new Expanded(
              child: Center(
                  child: Container(
                // margin: EdgeInsets.all(50),
                // height: 50,
                // width: 50,
                child: ListView.builder(
                  itemCount: globalList.length,
                  itemBuilder: (context, index) {
                    return new LayoutBuilder(builder: (context, constraints) {
                      if (isPressed == true) {
                        return Center(
                          child: Card(
                            margin: EdgeInsets.all(20),
                            child: Text(globalList[index].toString()),
                          ),
                        );
                      } else {
                        return Text('');
                      }
                    });
                    // Center(
                    //   child: Card(
                    //       margin: EdgeInsets.all(20),
                    //       child: Text(items[index])),
                    // );
                  },
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
