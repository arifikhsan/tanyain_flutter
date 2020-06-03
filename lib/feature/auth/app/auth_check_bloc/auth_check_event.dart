part of 'auth_check_bloc.dart';

@freezed
abstract class AuthCheckEvent with _$AuthCheckEvent {
  const factory AuthCheckEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthCheckEvent.loggedOut() = LoggedOut;
}
