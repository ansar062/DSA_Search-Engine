import 'package:finaldsa/Models/Searching/best_search.dart';
import 'package:finaldsa/Models/Sorting/best_sorting.dart';
import 'package:flutter/material.dart';
import 'dialogs.dart';
import 'main.dart';
import 'thirdpage.dart';

List<int> globalList = [];
final mycontroller = TextEditingController();
String message = "";

//This class is used to get data from first page
class getDataList {
  var dataList;

  getDataList(this.dataList) {
    globalList = dataList;
    print('page2 $globalList');
  }
}

 class Data {
   String Search(String s) {

     var bestS = BestSearch(globalList);
     return bestS.best(int.parse(s));
   }

   String Sort() {
     var bestSor = bestSort(globalList);

     return bestSor.best();
   }
 }

class SecondPageFinal extends StatefulWidget {
  const SecondPageFinal({Key? key}) : super(key: key);

  @override
  State<SecondPageFinal> createState() => _SecondPageFinalState();
}

class _SecondPageFinalState extends State<SecondPageFinal> {
  get texController => null;
  bool searchbuttun = true;
  get builder => null;
  final urlImage2 =
      'https://media.istockphoto.com/photos/business-trends-graphs-and-charts-picture-id1143391583?b=1&k=20&m=1143391583&s=170667a&w=0&h=vsUBoOoVHsVXbaicOpd2rx-s75NTxSFzskaaAARGC08=';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Searching & Sorting'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(urlImage2),
                fit: BoxFit.cover,
              )),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.all(200),
                    child: Container(
                      child: ElevatedButton(
                        child: Text('Sort'),
                        onPressed: () async {
                          var data = Data();
                          message = data.Sort();

                          //sortAlertDialog1(context);
                          sortAlertDialog1(context, message);
                        },
                      ),
                    ),
                  ),
                  // const SizedBox(height: 50, width: 50,),
                  // Text('Hello'),
                  Card(
                    margin: EdgeInsets.all(120),
                    child: Container(
                      child: Row(
                        children: [
                          Flexible(
                              child: TextField(
                            controller: texController,
                            decoration: InputDecoration(
                              labelText: 'Enter to search',
                              border: OutlineInputBorder(),
                            ),
                            // validator: (value) {
                            //   if (value == null || value.isEmpty) {
                            //     return 'Please enter a number';
                            //   }
                            // },
                          )),
                          ElevatedButton(
                            onPressed: searchbuttun
                                ? () {
                                     var data = Data();
                                     message = data.Search(mycontroller.text);
                                    //searchAlertDialog2(context);
                                    searchAlertDialog2(context, message);
                                  }
                                : null,
                            child: Text('Search'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Card(
                          margin: EdgeInsets.only(bottom: 40),
                          child: ElevatedButton(
                            child: Text('Next'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ThirdPage()),
                              );
                            },
                          )))
                ],
              ))),
    );
  }
}
