import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/quiz.dart';
import 'package:untitled/result.dart';
import 'questions.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
Color w=Colors.white;
Color b=Colors.black;
class _MyAppState extends State<MyApp> {
  bool isSwitched=false;
  int questionidx = 0;
  int totalscore=0;
  void restart() {
    setState(() {
      questionidx = 0;
      totalscore=0;
    });
  }

  void questionans(int score) {
    totalscore+=score;
    setState(() {
      questionidx += 1;
    });
    print(score);
  }

  final List<Map<String, Object>>question = [

  {
  'questiontxt': 'Q1. Who created Flutter?',
  'answers': [
  {'text': 'Facebook', 'score': 0},
  {'text': 'Adobe', 'score': 0},
  {'text': 'Google', 'score': 10},
  {'text': 'Microsoft', 'score': 0},

  ]

  ,
},
{
'questiontxt': 'Q2. What is Flutter?',
'answers': [
{'text': 'Android Development Kit', 'score': 0},
{'text': 'IOS Development Kit', 'score': 0},
{'text': 'Web Development Kit', 'score': 0},
{
'text':
'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
'score': 10
},
],
},
{
'questiontxt': ' Q3. Which programing language is used by Flutter',
'answers': [
{'text': 'Ruby', 'score': 0},
{'text': 'Dart', 'score': 10},
{'text': 'C++', 'score': 0},
{'text': 'Kotlin', 'score': 0},
],
},
{
'questiontxt': 'Q4. Who created Dart programing language?',
'answers': [
{'text': 'Lars Bak and Kasper Lund', 'score': 10},
{'text': 'Brendan Eich', 'score': 0},
{'text': 'Bjarne Stroustrup', 'score': 0},
{'text': 'Jeremy Ashkenas', 'score': 0},
],
},
{
'questiontxt':
'Q5. SDK stands for .....',
'answers': [
{
'text': 'Software Development Knowledge',
'score': 10,
},
{'text': 'software Data Kit', 'score': 0},
  {'text': 'software Development Kit', 'score': 0},
  {'text': 'software Database Kit', 'score': 0},

],
},
    {
      'questiontxt': 'Q6. What are the best editors for flutter development',
      'answers': [
        {'text': 'Android Studio', 'score': 0},
        {'text': 'IntelliJ IDEA', 'score': 0},
        {'text': 'Visual Studio', 'score': 0},
        {'text': 'All of the above', 'score': 10},
      ],
    },
];
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Quiz app",style: TextStyle(color: w),),
        actions: <Widget>[
          Switch(
            value: isSwitched,
            onChanged:(value){
              setState(() {
                isSwitched=value;
                if(isSwitched==true){b=Colors.white;w=Colors.black;}
                if(isSwitched==false){b=Colors.black;w=Colors.white;}
              });
            },
            activeColor: Colors.white,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.black,
          ),
        ],
      ),
      body: Container(
        color: w,
        child:
        questionidx < question.length ? Quiz(
            (question), questionidx, questionans)
            : Result(totalscore,restart),
      ),
    ),
  );
}}