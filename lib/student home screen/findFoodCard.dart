import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class findFoodCard extends StatelessWidget {
  const findFoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: const [
              Text('45 E Alpine St', style: TextStyle(fontSize: 20)),
              SizedBox(
                width: 20,
              ),
              Text(
                '5 miles',
                style: TextStyle(fontSize: 20),
              ),
              Icon(Icons.location_on)
            ],
          ),
          const Text(
            'Open from 10am to 6pm',
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
