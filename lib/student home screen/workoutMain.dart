import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/student%20home%20screen/workoutCard.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class workOuts extends StatelessWidget {
  const workOuts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: const Text('WorkOuts!'),
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
          child: ListView(
            children: [workOutCard(), workOutSitUps(), workOutJumpJacks()],
          )),
    );
  }
}
