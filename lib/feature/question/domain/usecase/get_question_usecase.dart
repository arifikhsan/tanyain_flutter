import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:tanyain_flutter/core/usecase/string_id_param.dart';
import 'package:tanyain_flutter/core/usecase/usecase.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question_entity.dart';
import 'package:tanyain_flutter/feature/question/domain/repository/question_repository.dart';

@lazySingleton
class GetQuestionUsecase implements Usecase<QuestionEntity, StringIdParam> {
  final QuestionRepository questionRepository;

  GetQuestionUsecase(this.questionRepository);

  @override
  Future<Either<Failure, QuestionEntity>> call(StringIdParam param) async {
    return await questionRepository.getQuestion(param.id);
  }
}
