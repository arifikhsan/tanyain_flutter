import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class QuestionEntity extends Equatable {
  final String id;
  final String title;
  final String body;

  QuestionEntity({
    this.id,
    @required this.title,
    this.body,
  });

  @override
  List<Object> get props => [id, title, body];
}
