part of 'questions_bloc.dart';

abstract class QuestionsEvent extends Equatable {
  const QuestionsEvent();
}

class StreamQuestionsEvent extends QuestionsEvent {
  @override
  List<Object> get props => null;
}

class QuestionsUpdatedEvent extends QuestionsEvent {
  final List<Question> questions;

  QuestionsUpdatedEvent({
    this.questions,
  });

  @override
  List<Object> get props => null;
}
