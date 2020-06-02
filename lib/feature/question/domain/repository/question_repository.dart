import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';

abstract class QuestionRepository {
  Future<Either<Failure, Stream<List<QuestionModel>>>> streamQuestions();
  Future<Either<Failure, QuestionModel>> getQuestion(String id);
  Future<Either<Failure, Unit>> addQuestion(QuestionModel questionModel);
  Future<Either<Failure, Unit>> updateQuestion(QuestionModel questionModel);
  Future<Either<Failure, Unit>> deleteQuestion(String id);
}
