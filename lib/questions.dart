import 'package:flutter/material.dart';
import 'main.dart';
class Questions extends StatelessWidget {
  String questiontxt;
  Questions(this.questiontxt);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Text(
            questiontxt,
            style: TextStyle(fontSize: 35 ,color: b),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
