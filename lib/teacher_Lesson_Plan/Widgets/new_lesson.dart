import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/teacher_Lesson_Plan/Model/Lesson.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class newLesson extends StatefulWidget {
  const newLesson({super.key, required this.onAddLesson});

  final void Function(Lesson lesson) onAddLesson;

  @override
  State<newLesson> createState() => _newLessonState();
}

class _newLessonState extends State<newLesson> {
  final _chapterController = TextEditingController();
  final _lessonController = TextEditingController();
  final _activityController = TextEditingController();
  DateTime? _selectedDate;

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year, now.month, now.day);
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  void _submitData() {
    if (_chapterController.text.trim().isEmpty || _selectedDate == null) {
      showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: const Text('Bad Input'),
                content: const Text(
                    'Please make sure you are plcaing a date, chapter, and wirting your lesson plan'),
                actions: [
                  TextButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      child: const Text('Okay'))
                ],
              )));
      return;
    }
    widget.onAddLesson(Lesson(
        chapter: _chapterController.text,
        lesson: _lessonController.text,
        date: _selectedDate!,
        activity: _activityController.text));
  }

  @override
  void dispose() {
    _chapterController.dispose();
    _lessonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _chapterController,
                  maxLength: 25,
                  decoration: const InputDecoration(label: Text('Chapter?')),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(_selectedDate == null
                      ? 'No Date selected'
                      : formatter.format(_selectedDate!)),
                  IconButton(
                      onPressed: (() {
                        _presentDatePicker();
                      }),
                      icon: const Icon(Icons.calendar_month_rounded))
                ],
              ))
            ],
          ),
          Expanded(
            child: TextField(
              controller: _lessonController,
              maxLength: 1000,
              minLines: 5,
              maxLines: 50,
              decoration: const InputDecoration(
                  label: Text('Enter Your Lesson Plan Here')),
            ),
          ),
          Row(
            children: [
              TextButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: const Text('Cancel')),
              ElevatedButton(
                  onPressed: (() {
                    _submitData();
                  }),
                  child: const Text('Save Lesson'))
            ],
          )
        ],
      ),
    );
  }
}
