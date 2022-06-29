import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answertxt;
  final x;
  Answer(this.x, this.answertxt);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 1),
        child: ElevatedButton(

          child: Text(answertxt, style: TextStyle(fontSize: 28)),
          onPressed:x,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
          ),
        ),
      ),
    );
  }
}
