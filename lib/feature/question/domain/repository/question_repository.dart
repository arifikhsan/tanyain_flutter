import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question.dart';

abstract class QuestionRepository {
  Future<Either<Failure, Stream<List<Question>>>> streamQuestions();
  Future<Either<Failure, Question>> getQuestion(String id);
  Future<Either<Failure, Unit>> addQuestion(Question question);
  Future<Either<Failure, Unit>> updateQuestion(Question question);
  Future<Either<Failure, Unit>> deleteQuestion(String id);
}
