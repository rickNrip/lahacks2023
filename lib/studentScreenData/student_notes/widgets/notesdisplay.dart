import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/studentScreenData/student_notes/models/datanotes.dart';
import 'package:flutter_application_2/studentScreenData/student_notes/widgets/notes-list.dart';

class noteDisplay extends StatelessWidget {
  const noteDisplay({super.key, required this.dataStudent});

  final List<dataNotes> dataStudent;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataStudent.length,
      itemBuilder: (ctx, index) => noteItem(dataStudent[index]),
    );
  }
}
