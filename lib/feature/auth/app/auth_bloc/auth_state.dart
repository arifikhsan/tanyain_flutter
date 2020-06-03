part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
