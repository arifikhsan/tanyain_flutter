part of 'question_bloc.dart';

@freezed
abstract class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.getQuestion(String id) = GetQuestion;
  const factory QuestionEvent.addQuestion(QuestionModel questionModel) =
      AddQuestion;
}
