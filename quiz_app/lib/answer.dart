import 'package:flutter/material.dart';

import 'main.dart';

class Answer extends StatefulWidget {
  final String answer;
  final IconData icon;

  Answer({required this.answer, required this.icon, super.key});

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
        ),
        onPressed: () {
          setState(() {
            MyApp.index++;
          });
        },
        child: ListTile(
          leading: Icon(widget.icon),
          title: Text(widget.answer),
        ),
      ),
    );
  }
}
