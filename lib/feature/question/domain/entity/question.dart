import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Question extends Equatable {
  final String id;
  final String title;
  final String body;

  Question({
    @required this.id,
    @required this.title,
    this.body,
  });

  @override
  List<Object> get props => [id, title, body];
}
