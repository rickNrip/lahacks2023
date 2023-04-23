import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/teacher_Lesson_Plan/Model/Lesson.dart';
import './Lesson_planHome.dart';

class lessonItem extends StatelessWidget {
  const lessonItem(this.lesson, {super.key});

  final Lesson lesson;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Column(
              children: [
                Text(lesson.chapter),
                const SizedBox(
                  height: 5,
                ),
                const Text('Chapter content'),
                Text(lesson.lesson),
                const SizedBox(
                  height: 20,
                ),
                const Text('Activty'),
                Text(lesson.activity)
              ],
            )));
  }
}
