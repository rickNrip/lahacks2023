import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/teacher_Lesson_Plan/Model/Lesson.dart';
import 'package:flutter_application_2/teacher_Lesson_Plan/Widgets/lessonItem.dart';

class lessonOutPut extends StatelessWidget {
  const lessonOutPut({super.key, required this.lesson});

  final List<Lesson> lesson;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: lesson.length,
        itemBuilder: ((context, index) => lessonItem(lesson[index])));
  }
}
