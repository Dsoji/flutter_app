import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primaryColor: Colors.purpleAccent
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: HomePage(),
    );
  }
}


