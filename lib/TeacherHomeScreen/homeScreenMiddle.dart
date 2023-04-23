import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/TeacherHomeScreen/studentCard.dart';

class studentCard extends StatefulWidget {
  const studentCard({super.key});

  @override
  State<studentCard> createState() => _studentCardState();
}

class _studentCardState extends State<studentCard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        cardStudents(),
        cardStudents(),
        cardStudents(),
        cardStudents(),
        cardStudents(),
        cardStudents(),
        cardStudents(),
      ],
    );
  }
}
