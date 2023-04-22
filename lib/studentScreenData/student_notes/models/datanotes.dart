import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

final uuid = Uuid();

enum Categorys { food, workout }

const categoryIcons = {
  Categorys.food: Icon(Icons.lunch_dining),
  Categorys.workout: Icon(Icons.fitness_center)
};

class dataNotes {
  dataNotes({
    required this.title,
    required this.date,
    required this.noteStudent,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final DateTime date;
  final String title;
  final String noteStudent;
  final Categorys category;

  String get formattedDate {
    return formatter.format(date);
  }
}
