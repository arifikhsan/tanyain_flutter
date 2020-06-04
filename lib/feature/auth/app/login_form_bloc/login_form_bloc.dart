import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:tanyain_flutter/core/failure/auth_failure.dart';
import 'package:tanyain_flutter/core/usecase/no_param.dart';
import 'package:tanyain_flutter/feature/auth/domain/usecase/login_with_google_usecase.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';

part 'login_form_bloc.freezed.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final LoginWithGoogleUsecase loginWithGoogleUsecase;

  LoginFormBloc({@required this.loginWithGoogleUsecase});

  @override
  LoginFormState get initialState => LoginFormState.initial();

  @override
  Stream<LoginFormState> mapEventToState(
    LoginFormEvent event,
  ) async* {
    if (event is LoginInWithEmailAndPasswordPressedEvent) {
      throw UnimplementedError();
    } else if (event is LoginWithGooglePressedEvent) {
      yield* _mapLoginWithGooglePressedEventToState();
    }
  }

  Stream<LoginFormState> _mapLoginWithGooglePressedEventToState() async* {
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    final failureOrSuccess = await loginWithGoogleUsecase.call(NoParam());
    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    );
  }
}
