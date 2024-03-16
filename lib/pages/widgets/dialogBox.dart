import 'package:flutter/material.dart';

  void dialogBoxWidgetFunctionCall(context, title,content){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         showDialogOnFunctionCall(context); // Call the function to show the dialog
//       },
//       child: Text('Show Dialog'),
//     );
  // }


// void main() {
//   runApp(MaterialApp(home: Scaffold(body: Center(child: dialogBoxWidget()))));
// }
