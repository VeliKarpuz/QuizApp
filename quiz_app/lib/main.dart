// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';

const Color primaryColor = Colors.pinkAccent;
const Color secondaryColor = Colors.blueGrey;

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QuizApp",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> questions = [
    "Birinci Soru",
    "İkinci Soru",
    "Üçüncü Soru",
    "Birinci Soru",
    "İkinci Soru",
    "Üçüncü Soru",
    "Birinci Soru",
    "İkinci Soru",
    "Üçüncü Soru",
    "Birinci Soru",
    "İkinci Soru",
    "Üçüncü Soru",
  ];

  final List<List> answers = [
    ["dsa", "das", "dfas", "dsa"],
    ["elma", "armut,", "çilek", "muz"],
    ["dsa", "das", "dfas", "dsa"],
    ["elma", "armut,", "çilek", "muz"],
    ["dsa", "das", "dfas", "dsa"],
    ["elma", "armut,", "çilek", "muz"],
  ];

  int qIndex = 0;

  void answerQuestion() {
    setState(() {
      qIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Quiz App"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.deepOrangeAccent,
                child: Center(
                  child: Text(
                    questions[qIndex],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: Column(
                children: [
                  Answer(answers[qIndex][0], answerQuestion),
                  Answer(answers[qIndex][1], answerQuestion),
                  Answer(answers[qIndex][2], answerQuestion),
                  Answer(answers[qIndex][3], answerQuestion),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
