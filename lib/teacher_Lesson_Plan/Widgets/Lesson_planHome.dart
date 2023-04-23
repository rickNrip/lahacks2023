import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/teacher_Lesson_Plan/Widgets/new_lesson.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'LessonMain.dart';
import 'package:flutter_application_2/teacher_Lesson_Plan/Model/Lesson.dart';
import './lessonList.dart';

class lessonPlanHome extends StatefulWidget {
  const lessonPlanHome({super.key});

  @override
  State<lessonPlanHome> createState() => _lessonPlanHomeState();
}

class _lessonPlanHomeState extends State<lessonPlanHome> {
  final List<Lesson> _registeredLesson = [
    Lesson(
        chapter: 'Chapter 1',
        lesson:
            'This lesson works well I am typing a long sentecte of nonsense to prove that the forjmat works very well i will soon be able to add our dadta into here and ill have ot come up with 12 pre designed data that the teacher can select but i am trying super hard',
        activity:
            'This is where the activyt will be shown i am putting it here to test if it will look how i think it is supposed to!',
        date: DateTime.now()),
  ];

  _openAddLessonOverlay() {
    showModalBottomSheet(
        context: context,
        builder: ((context) {
          return newLesson(onAddLesson: _addData);
        }));
  }

  void _addData(Lesson lesson) {
    setState(() {
      _registeredLesson.add(lesson);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        actions: [
          IconButton(
              onPressed: _openAddLessonOverlay, icon: const Icon(Icons.add))
        ],
        title: Text('Lesson Plan'),
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
        ),
      ),
      body: Column(
        children: [Expanded(child: lessonOutPut(lesson: _registeredLesson))],
      ),
    );
  }
}
