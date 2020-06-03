import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanyain_flutter/core/failure/auth_failure.dart';
import 'package:tanyain_flutter/core/usecase/no_param.dart';
import 'package:tanyain_flutter/feature/auth/domain/usecase/login_with_google_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginWithGoogleUsecase loginWithGoogleUsecase;

  AuthBloc({@required this.loginWithGoogleUsecase});

  @override
  AuthState get initialState => AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      registerWithEmailAndPasswordPressed: (e) async* {},
      loginInWithEmailAndPasswordPressed: (e) async* {},
      loginWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await loginWithGoogleUsecase.call(NoParam());
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  }
}
