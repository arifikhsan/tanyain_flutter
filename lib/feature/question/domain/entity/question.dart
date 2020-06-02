import 'package:flutter/foundation.dart';

class Question {
  final String id;
  final String title;
  final String body;

  Question({
    @required this.id,
    @required this.title,
    this.body,
  });
}
