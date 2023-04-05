import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'answer.dart';
import 'main.dart';

class Question extends StatelessWidget {
  Question({super.key});

  List<List<String>> answers = [
    ["1. Cevap", "2. Cevap", "3. Cevap", "4. Cevap"],
    ["5. Cevap", "6. Cevap", "7. Cevap", "8. Cevap"],
    ["9. Cevap", "10. Cevap", "11. Cevap", "12. Cevap"],
    ["13. Cevap", "14. Cevap", "15. Cevap", "16. Cevap"],
  ];

  List<String> questions = [
    "Soru 1'in metni buraya yazacak.",
    "Soru 2'in metni buraya yazacak.",
    "Soru 3'in metni buraya yazacak.",
    "Soru 4'in metni buraya yazacak.",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.orangeAccent,
            child: Center(
              child: Text(
                questions[MyApp.index],
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Answer(
                icon: FontAwesomeIcons.a,
                answer: answers[MyApp.index][0],
              ),
              Answer(
                icon: FontAwesomeIcons.b,
                answer: answers[MyApp.index][1],
              ),
              Answer(
                icon: FontAwesomeIcons.c,
                answer: answers[MyApp.index][2],
              ),
              Answer(
                icon: FontAwesomeIcons.d,
                answer: answers[MyApp.index][3],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
