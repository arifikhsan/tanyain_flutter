import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:tanyain_flutter/feature/question/app/question_bloc/question_bloc.dart';
import 'package:tanyain_flutter/feature/question/app/questions_bloc/questions_bloc.dart';
import 'package:tanyain_flutter/feature/question/data/datasource/question_remote_datasource.dart';
import 'package:tanyain_flutter/feature/question/data/repository/question_repository_impl.dart';
import 'package:tanyain_flutter/feature/question/domain/repository/question_repository.dart';
import 'package:tanyain_flutter/feature/question/domain/usecase/get_question_usecase.dart';
import 'package:tanyain_flutter/feature/question/domain/usecase/stream_questions_usecase.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  // * Features
  locator.registerFactory(
    () => QuestionsBloc(
      streamQuestionsUsecase: locator(),
    ),
  );

  locator.registerFactory(
    () => QuestionBloc(
      getQuestionUsecase: locator(),
    ),
  );

  // * Usecase
  locator.registerLazySingleton(
    () => StreamQuestionsUsecase(locator()),
  );
  locator.registerLazySingleton(
    () => GetQuestionUsecase(locator()),
  );

  // * Repository
  locator.registerLazySingleton<QuestionRepository>(
    () => QuestionRepositoryImpl(locator()),
  );

  // * Data Sources
  locator.registerLazySingleton<QuestionRemoteDatasource>(
    () => QuestionRemoteDatasourceImpl(),
  );

  // * External
  locator.registerLazySingleton(() => Firestore());
}
