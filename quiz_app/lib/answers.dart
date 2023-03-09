import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function pickedAnswer;
  Answer(this.answerText, this.pickedAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
        onPressed: () {
          pickedAnswer;
        },
        child: Text(answerText),
      ),
    );
  }
}
