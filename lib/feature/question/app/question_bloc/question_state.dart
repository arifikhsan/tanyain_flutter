part of 'question_bloc.dart';

abstract class QuestionState extends Equatable {
  const QuestionState();
}

class QuestionEmptyState extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionLoadingState extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionLoadedState extends QuestionState {
  final QuestionEntity question;

  QuestionLoadedState({
    @required this.question,
  });

  @override
  List<Object> get props => [question];
}

class QuestionErrorState extends QuestionState {
  final String message;

  QuestionErrorState({
    @required this.message,
  });

  @override
  List<Object> get props => [message];
}
