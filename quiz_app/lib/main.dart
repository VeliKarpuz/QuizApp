// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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

class MyHomePage extends StatelessWidget {
  final List<String> sorular = [
    "Birinci Soru",
    "İkinci Soru",
    "Üçüncü Soru",
  ];
  final List<String> cevaplar = ["dsa", "das", "dfas", "dsa"];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Text(
              sorular[index],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ElevatedButton(
                onPressed: () {},
                child: Text(cevaplar[index]),
              ),
              itemCount: 4,
            ),
          )
        ],
      ),
    );
  }
}
