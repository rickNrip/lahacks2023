import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class aiChat extends StatelessWidget {
  const aiChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NewGradientAppBar(
          title: const Text('ASK ME!'),
          gradient: const LinearGradient(
            colors: [Colors.red, Colors.pink],
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(227, 244, 54, 54),
            Color.fromARGB(255, 233, 30, 209)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                    decoration: InputDecoration(
                  labelText: 'Ask me about food!',
                )),
              ),
            ],
          ),
        ));
  }
}
