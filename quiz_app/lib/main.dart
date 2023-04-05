import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static int index = 0;
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Quiz App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Quiz App'),
      ),
      body: Question(),
    );
  }
}
