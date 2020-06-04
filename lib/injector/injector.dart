import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tanyain_flutter/core/feature/app/auth_bloc/auth_bloc.dart';
import 'package:tanyain_flutter/core/feature/domain/usecase/get_current_user_usecase.dart';
import 'package:tanyain_flutter/feature/auth/app/login_form_bloc/login_form_bloc.dart';
import 'package:tanyain_flutter/feature/auth/data/repository/firebase_auth_facade_repository_impl.dart';
import 'package:tanyain_flutter/feature/auth/domain/repository/auth_facade_repository.dart';
import 'package:tanyain_flutter/feature/auth/domain/usecase/login_with_google_usecase.dart';
import 'package:tanyain_flutter/feature/profile/app/bloc/profile_bloc.dart';
import 'package:tanyain_flutter/feature/profile/data/datasource/profile_remote_datasource.dart';
import 'package:tanyain_flutter/feature/profile/data/repository/profile_repository_impl.dart';
import 'package:tanyain_flutter/feature/profile/domain/repository/profile_repository.dart';
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
  locator
      .registerFactory(() => QuestionsBloc(streamQuestionsUsecase: locator()));
  locator.registerFactory(() => QuestionBloc(getQuestionUsecase: locator()));
  locator
      .registerFactory(() => LoginFormBloc(loginWithGoogleUsecase: locator()));
  locator.registerFactory(() => AuthBloc(
        authFacadeRepository: locator(),
        getCurrentUserUsecase: locator(),
      ));
  locator.registerFactory(() => ProfileBloc(getCurrentUserUsecase: locator()));

  // * Usecase
  locator.registerLazySingleton(() => StreamQuestionsUsecase(locator()));
  locator.registerLazySingleton(() => GetQuestionUsecase(locator()));
  locator.registerLazySingleton(() => LoginWithGoogleUsecase(locator()));
  locator.registerLazySingleton(() => GetCurrentUserUsecase(locator()));

  // * Repository
  locator.registerLazySingleton<QuestionRepository>(
      () => QuestionRepositoryImpl(locator()));
  locator.registerLazySingleton<AuthFacadeRepository>(
    () => FirebaseAuthFacadeRepositoryImpl(
      firebaseAuth: locator(),
      googleSignIn: locator(),
    ),
  );
  locator.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(profileRemoteDatasource: locator()));

  // * Data Sources
  locator.registerLazySingleton<QuestionRemoteDatasource>(
    () => QuestionRemoteDatasourceImpl(),
  );
  locator.registerLazySingleton<ProfileRemoteDatasource>(
    () => ProfileRemoteDatasourceImpl(firebaseAuth: locator()),
  );

  // * External
  locator.registerLazySingleton(() => Firestore.instance);
  locator.registerLazySingleton(() => GoogleSignIn());
  locator.registerLazySingleton(() => FirebaseAuth.instance);
}
