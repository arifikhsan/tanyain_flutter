import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/core/exception/server_exception.dart';
import 'package:tanyain_flutter/core/failure/server_failure.dart';
import 'package:tanyain_flutter/feature/question/data/datasource/question_remote_datasource.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/feature/question/domain/repository/question_repository.dart';

@LazySingleton(as: QuestionRepository)
class QuestionRepositoryImpl implements QuestionRepository {
  final QuestionRemoteDatasource remoteDatasource;

  QuestionRepositoryImpl(this.remoteDatasource);

  @override
  Future<Either<Failure, Stream<List<QuestionModel>>>> streamQuestions() async {
    try {
      final remoteQuestions = await remoteDatasource.streamQuestions();
      return right(remoteQuestions);
    } on ServerException {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, QuestionModel>> getQuestion(String id) async {
    try {
      final question = await remoteDatasource.getQuestion(id);
      return right(question);
    } on ServerException {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> addQuestion(QuestionModel questionModel) async {
    try {
      final question = await remoteDatasource.addQuestion(questionModel);
      return right(question);
    } on ServerException {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateQuestion(
      QuestionModel questionModel) async {
    try {
      final question = await remoteDatasource.updateQuestion(questionModel);
      return right(question);
    } on ServerException {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteQuestion(String id) async {
    try {
      final question = await remoteDatasource.deleteQuestion(id);
      return right(question);
    } on ServerException {
      return left(ServerFailure());
    }
  }
}
