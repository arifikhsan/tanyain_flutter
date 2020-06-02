import 'dart:async';

import 'package:tanyain_flutter/core/exception/server_exception.dart';
import 'package:tanyain_flutter/core/failure/server_failure.dart';
import 'package:tanyain_flutter/feature/question/data/datasource/question_remote_datasource.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/feature/question/domain/repository/question_repository.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  final QuestionRemoteDatasource remoteDatasource;

  QuestionRepositoryImpl(this.remoteDatasource);

  @override
  Future<Either<Failure, Stream<List<Question>>>> streamQuestions() async {
    try {
      final remoteQuestion = await remoteDatasource.streamQuestions();
      return right(remoteQuestion);
    } on ServerException {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Question>> getQuestion(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> addQuestion(Question question) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteQuestion(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> updateQuestion(Question question) {
    throw UnimplementedError();
  }
}
