import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/answer_button.dart';
import 'package:flutter_application_2/data/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class questionsQuiz extends StatefulWidget {
  const questionsQuiz({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<questionsQuiz> createState() => _questionsQuizState();
}

class _questionsQuizState extends State<questionsQuiz> {
  var currentQuestionIndex = 0;
  void answerQuestionIndex = 0;

  answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currentQuestion.textQuiz,
          style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(220, 255, 255, 255)),
        ),
        SizedBox(
          height: 30,
        ),
        ...currentQuestion.getShuffledAnswers().map((answer) {
          return AnswerButton(answer, (() {
            answerQuestion(answer);
          }));
        }),
      ],
    );
  }
}
