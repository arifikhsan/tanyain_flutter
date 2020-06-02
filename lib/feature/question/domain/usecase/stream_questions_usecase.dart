import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:tanyain_flutter/core/usecase/no_param.dart';
import 'package:tanyain_flutter/core/usecase/usecase.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question.dart';
import 'package:tanyain_flutter/feature/question/domain/repository/question_repository.dart';

class StreamQuestionsUsecase
    implements Usecase<Stream<List<Question>>, NoParam> {
  final QuestionRepository questionRepository;

  StreamQuestionsUsecase(this.questionRepository);

  @override
  Future<Either<Failure, Stream<List<Question>>>> call(NoParam params) async {
    return await questionRepository.streamQuestions();
  }
}
