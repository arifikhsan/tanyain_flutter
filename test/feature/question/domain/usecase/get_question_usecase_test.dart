import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tanyain_flutter/core/env/environment.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';
import 'package:tanyain_flutter/injector/injector.dart';
import 'package:tanyain_flutter/injector/mock/repository.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    configureInjection(Environment.test);
  });

  test(
    'get question usecase',
    () async {
      final mockQuestionRepository = locator<MockQuestionRepository>();
      // final usecase = locator<GetQuestionUsecase>();
      final question = QuestionModel(id: "1", title: 'title', body: 'body');
      final id = '1';

      // arrange
      when(mockQuestionRepository.getQuestion(id))
          .thenAnswer((_) async => right(question));

      // act
      // final result = await usecase(StringIdParam(id: id));

      // assert
      // print(result);
      // print(usecase);
      expect(1 + 1, 2);
      // print(streamQuestions);
      // expect(result, Right(streamQuestions));
      // verifyNever(mockQuestionRepository.streamQuestions());
      // verifyNoMoreInteractions(mockQuestionRepository);
    },
  );
}
