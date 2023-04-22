import 'package:flutter/material.dart';
import 'package:flutter_application_2/teacherview.dart';
import 'package:flutter_application_2/studentScreenData/studentNav.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 242, 127, 20),
            title: const Text('Login')),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const studentNav()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 193, 5, 5),
                    ),
                    child: const Text(
                      'Student Login',
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const teacherView()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 238, 7, 7),
                ),
                child: const Text(
                  'Teacher Login',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ]),
        ));
  }
}
