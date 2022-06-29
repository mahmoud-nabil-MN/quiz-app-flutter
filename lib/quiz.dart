import 'package:flutter/material.dart';
import 'answer.dart';
import 'questions.dart';
class Quiz extends StatelessWidget{
  final question;
  final questionidx;
  final questionans;
  Quiz(this.question,this.questionidx,this.questionans);
  @override
  Widget build(BuildContext context){
    return Column(
        children: <Widget>[
          Questions(
            question[questionidx]['questiontxt'].toString(),
          ),
          ...(question[questionidx]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answer(() => questionans(answer['score']), answer['text'].toString());
          }).toList(),
        ],
    );
  }
}