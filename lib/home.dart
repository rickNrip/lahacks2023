import 'package:flutter/material.dart';
import 'package:flutter_application_2/studentScreenData/studentNav.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to login'),
            ),
          ),
        ]),
      ),
    );
  }
}
