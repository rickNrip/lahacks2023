import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/data/data/questions.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import './start_screen.dart';
import './questions_student.dart';
import './results.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = quizResults(
          chosenAnswers: selectedAnswers,
        );
      });
    }
  }

  @override
  void initState() {
    activeScreen = startQuiz(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = questionsQuiz(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NewGradientAppBar(
          title: Text('Kidz Eat'),
          gradient: const LinearGradient(
            colors: [Colors.red, Colors.pink],
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: activeScreen,
        ));
  }
}
