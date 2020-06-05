import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tanyain_flutter/core/env/environment.dart';
import 'package:tanyain_flutter/core/usecase/no_param.dart';
import 'package:tanyain_flutter/feature/question/domain/usecase/stream_questions_usecase.dart';
import 'package:tanyain_flutter/injector/injector.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';
import 'package:tanyain_flutter/injector/mock/repository.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    configureInjection(Environment.test);
  });

  test(
    'should stream questions',
    () async {
      final mockQuestionRepository = locator<MockQuestionRepository>();
      final usecase = locator<StreamQuestionsUsecase>();
      final question = QuestionModel(id: "1", title: 'title', body: 'body');
      final streamQuestions = Stream.value([question]);

      // arrange
      when(mockQuestionRepository.streamQuestions())
          .thenAnswer((_) async => Right(streamQuestions));

      // act
      final result = await usecase(NoParam());

      // assert
      print(result);
      // print(streamQuestions);
      // expect(result, Right(streamQuestions));
      verifyNever(mockQuestionRepository.streamQuestions());
      verifyNoMoreInteractions(mockQuestionRepository);
    },
  );
}
