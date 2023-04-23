import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/TeacherHomeScreen/data%20Student/data.dart';

import '../studentScreenData/student_notes/studentNotes.dart';

class cardStudents extends StatefulWidget {
  const cardStudents({super.key});

  @override
  State<cardStudents> createState() => _cardStudentsState();
}

class _cardStudentsState extends State<cardStudents> {
  final List<dataStudentCard> _registeredCard = [
    dataStudentCard(
      name: 'Amber Raeber',
      Cals: '1100',
      waterCups: '5',
    ),
    dataStudentCard(name: 'Jessie Gonzales', Cals: '550', waterCups: '4'),
    dataStudentCard(name: 'Nihkil', Cals: '2600', waterCups: '2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            'First Name, Last Name',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Water cups: 2'),
                SizedBox(
                  width: 10,
                ),
                Text('Calories: 500'),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => viewNotes()),
                      );
                    }),
                    icon: Icon(Icons.library_books)),
                Text('Notes'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
