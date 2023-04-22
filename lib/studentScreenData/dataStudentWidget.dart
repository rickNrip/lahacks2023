import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class calData extends StatefulWidget {
  calData(this.calUser, {super.key});
  String? calUser;

  @override
  State<calData> createState() => _calDataState();
}

class _calDataState extends State<calData> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: SingleChildScrollView(
            child: Column(children: [Text('This is a text')])));
  }
}
