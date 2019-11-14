import 'package:flutter/material.dart';

// https://dribbble.com/shots/8112616-Mood-Fabrics

class MoodFadbrics extends StatefulWidget {
  @override
  _MoodFadbricsState createState() => _MoodFadbricsState();
}

class _MoodFadbricsState extends State<MoodFadbrics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.all(80.0),
          color: Colors.white,
          child: Placeholder(),
        ),
    );
  }
}
