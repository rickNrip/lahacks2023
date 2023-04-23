import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class startQuiz extends StatelessWidget {
  const startQuiz(this.startStudQuiz, {super.key});

  final void Function() startStudQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.apple,
            size: 100,
            color: Color.fromARGB(187, 255, 235, 59),
          ),
          const Text(
            'Start Quiz here',
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text('Chapter 1 assigned by your instructor'),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton(
              onPressed: (() {
                startStudQuiz();
              }),
              child: const Text(
                'START',
                style: TextStyle(
                    fontSize: 40, color: Color.fromARGB(166, 255, 235, 59)),
              ))
        ],
      ),
    );
  }
}
