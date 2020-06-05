// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:tanyain_flutter/injector/module/firebase_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tanyain_flutter/injector/mock/repository.dart';
import 'package:tanyain_flutter/feature/profile/data/datasource/profile_remote_datasource.dart';
import 'package:tanyain_flutter/feature/profile/data/repository/profile_repository_impl.dart';
import 'package:tanyain_flutter/feature/profile/domain/repository/profile_repository.dart';
import 'package:tanyain_flutter/feature/question/data/datasource/question_remote_datasource.dart';
import 'package:tanyain_flutter/feature/question/data/repository/question_repository_impl.dart';
import 'package:tanyain_flutter/feature/question/domain/repository/question_repository.dart';
import 'package:tanyain_flutter/feature/question/domain/usecase/stream_questions_usecase.dart';
import 'package:tanyain_flutter/core/feature/data/datasource/user_remote_datasource.dart';
import 'package:tanyain_flutter/core/feature/data/repository/user_repository_impl.dart';
import 'package:tanyain_flutter/core/feature/domain/repository/user_repository.dart';
import 'package:tanyain_flutter/feature/question/domain/usecase/add_question_usecase.dart';
import 'package:tanyain_flutter/feature/auth/data/repository/firebase_auth_facade_repository_impl.dart';
import 'package:tanyain_flutter/feature/auth/domain/repository/auth_facade_repository.dart';
import 'package:tanyain_flutter/feature/auth/data/datasource/auth_remote_datasource.dart';
import 'package:tanyain_flutter/core/feature/domain/usecase/get_current_user_usecase.dart';
import 'package:tanyain_flutter/feature/question/domain/usecase/get_question_usecase.dart';
import 'package:tanyain_flutter/feature/auth/domain/usecase/login_with_google_usecase.dart';
import 'package:tanyain_flutter/feature/profile/app/bloc/profile_bloc.dart';
import 'package:tanyain_flutter/feature/question/app/question_bloc/question_bloc.dart';
import 'package:tanyain_flutter/feature/question/app/questions_bloc/questions_bloc.dart';
import 'package:tanyain_flutter/core/feature/app/auth_bloc/auth_bloc.dart';
import 'package:tanyain_flutter/feature/auth/app/login_form_bloc/login_form_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<ProfileRemoteDatasource>(
      () => ProfileRemoteDatasourceImpl(firebaseAuth: g<FirebaseAuth>()));
  g.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImpl(
      profileRemoteDatasource: g<ProfileRemoteDatasource>()));
  g.registerLazySingleton<QuestionRemoteDatasource>(
      () => QuestionRemoteDatasourceImpl());
  g.registerLazySingleton<QuestionRepository>(
      () => QuestionRepositoryImpl(g<QuestionRemoteDatasource>()));
  g.registerLazySingleton<StreamQuestionsUsecase>(
      () => StreamQuestionsUsecase(g<QuestionRepository>()));
  g.registerLazySingleton<UserRemoteDatasource>(
      () => UserRemoteDatasourceImpl(firebaseAuth: g<FirebaseAuth>()));
  g.registerLazySingleton<UserRepository>(() =>
      UserRepositoryImpl(userRemoteDatasource: g<UserRemoteDatasource>()));
  g.registerLazySingleton<AddQuestionUsecase>(
      () => AddQuestionUsecase(questionRepository: g<QuestionRepository>()));
  g.registerLazySingleton<AuthFacadeRepository>(() =>
      FirebaseAuthFacadeRepositoryImpl(
          firebaseAuth: g<FirebaseAuth>(), googleSignIn: g<GoogleSignIn>()));
  g.registerLazySingleton<AuthRemoteDatasource>(() => AuthRemoteDatasourceImpl(
      firebaseAuth: g<FirebaseAuth>(), googleSignIn: g<GoogleSignIn>()));
  g.registerLazySingleton<GetCurrentUserUsecase>(
      () => GetCurrentUserUsecase(g<UserRepository>()));
  g.registerLazySingleton<GetQuestionUsecase>(
      () => GetQuestionUsecase(g<QuestionRepository>()));
  g.registerLazySingleton<LoginWithGoogleUsecase>(
      () => LoginWithGoogleUsecase(g<AuthFacadeRepository>()));
  g.registerFactory<ProfileBloc>(
      () => ProfileBloc(getCurrentUserUsecase: g<GetCurrentUserUsecase>()));
  g.registerFactory<QuestionBloc>(() => QuestionBloc(
      getQuestionUsecase: g<GetQuestionUsecase>(),
      addQuestionUsecase: g<AddQuestionUsecase>()));
  g.registerFactory<QuestionsBloc>(
      () => QuestionsBloc(streamQuestionsUsecase: g<StreamQuestionsUsecase>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(
      authFacadeRepository: g<AuthFacadeRepository>(),
      getCurrentUserUsecase: g<GetCurrentUserUsecase>()));
  g.registerFactory<LoginFormBloc>(
      () => LoginFormBloc(loginWithGoogleUsecase: g<LoginWithGoogleUsecase>()));

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerFactory<MockQuestionRepository>(() => MockQuestionRepository());
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
