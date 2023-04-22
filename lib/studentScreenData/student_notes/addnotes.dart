import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/studentScreenData/student_notes/studentNotes.dart';
import 'package:flutter_application_2/studentScreenData/student_notes/widgets/notes-list.dart';
import 'package:flutter_application_2/studentScreenData/student_notes/widgets/notesdisplay.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:intl/intl.dart';
import './models/datanotes.dart';

final formatter = DateFormat.yMd();

class addNoteStud extends StatefulWidget {
  const addNoteStud({super.key, required this.onAddNotes});

  final void Function(dataNotes notes) onAddNotes;

  @override
  State<addNoteStud> createState() => _addNoteStudState();
}

class _addNoteStudState extends State<addNoteStud> {
  final _titleController = TextEditingController();
  final _noteController = TextEditingController();
  DateTime? _selectedDate;
  Categorys _selectedCategory = Categorys.food;

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year, now.month - 1, now.day);
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
    if (_titleController.text.trim().isEmpty || _selectedDate == null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Invalid input'),
          content: const Text(
              'Please make sure to place a day, selected a date and enter a note'),
          actions: [
            TextButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                child: const Text('Okay'))
          ],
        ),
      );
      return;
    }
    widget.onAddNotes(dataNotes(
        title: _titleController.text,
        date: _selectedDate!,
        noteStudent: _noteController.text,
        category: _selectedCategory));
  }

  @override
  void dispose() {
    _titleController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NewGradientAppBar(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.pink],
          ),
          title: Text(' Add Notes'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _titleController,
                      maxLength: 10,
                      decoration:
                          InputDecoration(label: Text('Day Of the Week')),
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
                            onPressed: _presentDatePicker,
                            icon: const Icon(
                              Icons.calendar_month,
                            ))
                      ],
                    ),
                  )
                ],
              ),
              TextField(
                controller: _noteController,
                maxLength: 60,
                decoration:
                    InputDecoration(label: Text('Enter your note here')),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(children: [
                DropdownButton(
                    value: _selectedCategory,
                    items: Categorys.values
                        .map(
                          (category) => DropdownMenuItem(
                            value: category,
                            child: Text(
                              category.name.toUpperCase(),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: ((vaule) {
                      if (vaule == null) {
                        return;
                      }
                      _selectedCategory = vaule;
                    })),
                const Spacer(),
                TextButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    child: Text('Cancel')),
                ElevatedButton(
                    onPressed: () => {_submitData()}, child: Text('Save Day')),
              ])
            ],
          ),
        ));
  }
}
