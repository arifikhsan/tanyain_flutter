part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkRequested() = CheckRequested;
  const factory AuthEvent.logout() = Logout;
}
