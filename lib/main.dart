import 'package:flutter/material.dart';

import '1113/arti.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Arti(),  // 11-13
    );
  }
}