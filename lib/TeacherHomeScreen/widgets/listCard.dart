import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/TeacherHomeScreen/data%20Student/data.dart';

class cardListView extends StatelessWidget {
  const cardListView({super.key, required this.data});
  final List<dataStudentCard> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: ((context, index) => Text(data[index].name)));
  }
}
