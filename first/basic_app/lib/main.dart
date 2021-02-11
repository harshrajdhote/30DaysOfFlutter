import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // runApp provided by flutter to initiate, takes widght tree
  //and shows it on screen
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //home is named arg
    return MaterialApp(home: Text("Hello!"));
  }
}
