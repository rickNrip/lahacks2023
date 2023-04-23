import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class workOutCard extends StatelessWidget {
  const workOutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Push Ups',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Reps: 10',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Sets: 3',
                  style: TextStyle(fontSize: 15),
                ),
                Text('Calories burned:'),
                Text(
                  '60',
                  style: TextStyle(fontSize: 12, color: Colors.red),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class workOutSitUps extends StatelessWidget {
  const workOutSitUps({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Sit Ups',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Reps: 10',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Sets: 3',
                  style: TextStyle(fontSize: 15),
                ),
                Text('Calories burned:'),
                Text(
                  '20',
                  style: TextStyle(fontSize: 12, color: Colors.red),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class workOutJumpJacks extends StatelessWidget {
  const workOutJumpJacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Jumping Jacks',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Time: 5 Minutes',
                  style: TextStyle(fontSize: 15),
                ),
                Text('Calories burned:'),
                Text(
                  '40',
                  style: TextStyle(fontSize: 12, color: Colors.red),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
