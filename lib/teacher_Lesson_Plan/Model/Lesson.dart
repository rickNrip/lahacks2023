import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Lesson {
  Lesson(
      {required this.chapter,
      required this.lesson,
      required this.date,
      required this.activity})
      : id = uuid.v4();

  final String id;
  final String chapter;
  final String lesson;
  final String activity;
  final DateTime date;
}
