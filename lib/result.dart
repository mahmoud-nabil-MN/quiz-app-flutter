import 'package:flutter/material.dart';
import 'main.dart';
class Result extends StatelessWidget {
  final Function() q;
  final int resultscore;

  Result(this.resultscore, this.q);

  String get resultPhrase {
    String resultxt;
    if (resultscore >= 50) {
      resultxt = 'You are awesome!';
      print(resultscore);
    } else if (resultscore >= 40) {
      resultxt = 'Pretty likeable!';
      print(resultscore);
    } else if (resultscore >= 30) {
      resultxt = 'You need to work more!';
    } else if (resultscore >= 1) {
      resultxt = 'You need to work hard!';
    } else {
      resultxt = 'This is a poor score!';
      print(resultscore);
    }
    return resultxt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold , color: b),
        ),
        Text(
          'Score ' '$resultscore',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,color: b),
          textAlign: TextAlign.center,
        ), //Text

        FlatButton(
          child: Text(
            "Restart The App",
            style: TextStyle(color: Colors.blue, fontSize: 40),
          ),
          onPressed: q,
        ),
      ],
    ));
  }
}
