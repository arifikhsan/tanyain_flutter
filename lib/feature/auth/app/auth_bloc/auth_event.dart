part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory AuthEvent.loginInWithEmailAndPasswordPressed() =
      LoginWithEmailAndPasswordPressed;
  const factory AuthEvent.loginWithGooglePressed() = LoginWithGooglePressed;
}
