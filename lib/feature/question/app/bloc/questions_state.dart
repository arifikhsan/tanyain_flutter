part of 'questions_bloc.dart';

abstract class QuestionsState extends Equatable {
  const QuestionsState();
}

class QuestionsEmptyState extends QuestionsState {
  @override
  List<Object> get props => [];
}

class QuestionsLoadingState extends QuestionsState {
  @override
  List<Object> get props => [];
}

class QuestionsLoadedState extends QuestionsState {
  final List<Question> questions;

  QuestionsLoadedState({
    @required this.questions,
  });

  @override
  List<Object> get props => [questions];
}

class QuestionsErrorState extends QuestionsState {
  final String message;

  QuestionsErrorState({
    @required this.message,
  });

  @override
  List<Object> get props => [message];
}
