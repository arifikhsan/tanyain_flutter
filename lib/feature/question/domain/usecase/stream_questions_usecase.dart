import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:tanyain_flutter/core/usecase/no_param.dart';
import 'package:tanyain_flutter/core/usecase/usecase.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question_entity.dart';
import 'package:tanyain_flutter/feature/question/domain/repository/question_repository.dart';

@lazySingleton
class StreamQuestionsUsecase
    implements Usecase<Stream<List<QuestionEntity>>, NoParam> {
  final QuestionRepository questionRepository;

  StreamQuestionsUsecase(this.questionRepository);

  @override
  Future<Either<Failure, Stream<List<QuestionEntity>>>> call(
    NoParam noParam,
  ) async {
    return await questionRepository.streamQuestions();
  }
}
