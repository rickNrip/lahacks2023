import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/student%20home%20screen/studentNav.dart';

class addWater extends StatelessWidget {
  addWater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adding Water'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(children: const [
          TextField(
              decoration: InputDecoration(
            labelText: 'Add water in cups! 8oz = 1 cup',
            icon: Icon(Icons.reviews_rounded),
          )),
        ]),
      ),
    );
  }
}
