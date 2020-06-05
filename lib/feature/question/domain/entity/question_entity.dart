import 'package:equatable/equatable.dart';

class QuestionEntity extends Equatable {
  final String id;
  final String title;
  final String body;
  final String createdAt;

  QuestionEntity({
    this.id,
    this.title,
    this.body,
    this.createdAt,
  });

  @override
  List<Object> get props => [id, title, body];
}
