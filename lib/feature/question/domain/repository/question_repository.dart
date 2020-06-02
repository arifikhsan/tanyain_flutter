import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question_entity.dart';

abstract class QuestionRepository {
  Future<Either<Failure, Stream<List<QuestionEntity>>>> streamQuestions();
  Future<Either<Failure, QuestionEntity>> getQuestion(String id);
  Future<Either<Failure, Unit>> addQuestion(QuestionEntity question);
  Future<Either<Failure, Unit>> updateQuestion(QuestionEntity question);
  Future<Either<Failure, Unit>> deleteQuestion(String id);
}
