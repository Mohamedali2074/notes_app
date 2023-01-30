// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NoteModel {
  final String title;
  final String subtitle;
  final String date;
  final int color;
  NoteModel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
  });
}
