import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String image;
  final String title;
//  final bool isSelected;
  final Function onPressed;

  MyTab({this.image, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(right: 24.0, bottom: 24.0),
        height: 70.0,
        width: 80.0,
        child: Image.network(image, fit: BoxFit.fill),
      ),
    );
  }
}
