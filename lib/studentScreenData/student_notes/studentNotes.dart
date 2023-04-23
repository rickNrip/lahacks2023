import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'models/datanotes.dart';
import 'widgets/notesdisplay.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class viewNotes extends StatefulWidget {
  const viewNotes({super.key});

  @override
  State<viewNotes> createState() => _viewNotesState();
}

class _viewNotesState extends State<viewNotes> {
  final List<dataNotes> _registeredNotes = [
    dataNotes(
        title: 'Monday',
        date: DateTime.now(),
        noteStudent: 'I ate an apple',
        category: Categorys.food),
    dataNotes(
        title: 'Monday',
        date: DateTime.now(),
        noteStudent: 'I did 40 push ups',
        category: Categorys.workout),
  ];

  void addNote(dataNotes notes) {
    setState(() {
      _registeredNotes.add(notes);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.pink],
        ),
        title: Text('Notes'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          children: [
            Expanded(child: noteDisplay(dataStudent: _registeredNotes))
          ],
        ),
      ),
    );
  }
}
