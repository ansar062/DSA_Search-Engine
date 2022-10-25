import 'package:flutter/material.dart';

sortAlertDialog1(BuildContext context,String txt) {
  // set up the button
  Widget okButton = TextButton(
    child: Text(txt),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Best Sorting"),
    
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
searchAlertDialog2(BuildContext context,String txt) {
  // set up the button
  Widget okButton = TextButton(
    child: Text(txt),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Best Searching"),
    
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}