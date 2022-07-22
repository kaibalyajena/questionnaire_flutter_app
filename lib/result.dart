import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result_score;
  final VoidCallback resetfun;
  Result(this.result_score, this.resetfun);

  String get result_text {
    var restext;
    if (result_score <= 4) {
      restext = "you are the best";
    } else if (result_score <= 8) {
      restext = "you are good but can be better";
    } else if (result_score <= 12) {
      restext = "you are not likable and adorabe";
    } else {
      restext = "you are the worst";
    }
    return restext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            result_text,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetfun,
              textColor: Colors.blue,
              child: Text(
                'restart quiz',
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
