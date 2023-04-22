import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';

import 'Lesson_planHome.dart';

class mainLesson extends StatelessWidget {
  const mainLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: lessonPlanHome(),
    );
  }
}
