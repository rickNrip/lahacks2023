import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class cardLeader extends StatelessWidget {
  const cardLeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Ricky Bailey',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '1st',
                  style: TextStyle(fontSize: 20, color: Colors.yellow),
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  'Points:',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '25',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                Icon(Icons.filter_center_focus_sharp)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class cardOther extends StatelessWidget {
  const cardOther({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('The Rest Of My Team'),
          Row(
            children: const [
              Text(
                'Points:',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '15',
                style: TextStyle(fontSize: 20, color: Colors.red),
              )
            ],
          )
        ],
      ),
    );
  }
}
