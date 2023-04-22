import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/studentScreenData/student_notes/models/datanotes.dart';
import './notesdisplay.dart';

class noteItem extends StatelessWidget {
  noteItem(this.notes, {super.key});

  final dataNotes notes;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(notes.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(notes.noteStudent),
                const Spacer(),
                Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Text(notes.formattedDate)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
