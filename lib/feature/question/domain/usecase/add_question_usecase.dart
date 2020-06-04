import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/usecase/usecase.dart';
import 'package:tanyain_flutter/feature/question/core/param/question_model_param.dart';
import 'package:tanyain_flutter/feature/question/domain/repository/question_repository.dart';

@lazySingleton
class AddQuestionUsecase extends Usecase<Unit, QuestionModelParam> {
  final QuestionRepository questionRepository;

  AddQuestionUsecase({@required this.questionRepository});

  @override
  Future<Either<Failure, Unit>> call(QuestionModelParam params) async {
    return await questionRepository.addQuestion(params.questionModel);
  }
}
