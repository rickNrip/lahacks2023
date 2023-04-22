import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/data/data/questions.dart';
import './questions_summary.dart';

class quizResults extends StatelessWidget {
  const quizResults({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      //loop body
      summary.add({
        'question_index': i,
        'question': questions[i].textQuiz,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where(((data) {
      return data['user_answer'] == data['correct_answer'];
    })).length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly'),
        const SizedBox(
          height: 30,
        ),
        QuestionsSummary(summaryData),
        const Text('List of answers and questions'),
        const SizedBox(
          height: 30,
        ),
        TextButton(onPressed: (() {}), child: Text('Exit'))
      ],
    );
  }
}
