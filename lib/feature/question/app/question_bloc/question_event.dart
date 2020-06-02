part of 'question_bloc.dart';

abstract class QuestionEvent extends Equatable {
  const QuestionEvent();
}

class GetQuestionEvent extends QuestionEvent {
  final String id;

  GetQuestionEvent({@required this.id});

  @override
  List<Object> get props => [];
}
