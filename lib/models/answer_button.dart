import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(192, 3, 168, 244),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: Text(answerText),
    );
  }
}
