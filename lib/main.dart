import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  int total_score = 0;

  void qans(int score) {
    total_score += score;
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  void reset() {
    setState(() {
      questionIndex = 0;
      total_score = 0;
    });
  }

  var questions = [
    {
      'questionText': 'what is your favourite color ?',
      'answers': [
        {'text': 'blue', 'value': 2},
        {'text': 'black', 'value': 4},
        {'text': 'red', 'value': 3},
        {'text': 'green', 'value': 1},
      ]
    },
    {
      'questionText': 'what\'s your favourite animal ? ',
      'answers': [
        {'text': 'cat', 'value': 2},
        {'text': 'dog', 'value': 1},
        {'text': 'elephant', 'value': 4},
        {'text': 'tiger', 'value': 3},
      ]
    },
    {
      'questionText': 'what\'s your favourite toy ? ',
      'answers': [
        {'text': 'car', 'value': 2},
        {'text': 'dolls', 'value': 1},
        {'text': 'stufftoys', 'value': 3},
        {'text': 'drones', 'value': 4},
      ]
    },
    {
      'questionText': 'what\'s your favourite car ? ',
      'answers': [
        {'text': 'mercedes', 'value': 3},
        {'text': 'bmw', 'value': 2},
        {'text': 'audi', 'value': 4},
        {'text': 'lamborghini', 'value': 1},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    int score;
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("QUESTIONNAIRE APP")),
            body: questionIndex < questions.length
                ? Quiz(questions, questionIndex, qans)
                : Result(total_score, reset)));
  }
}
