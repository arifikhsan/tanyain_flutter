part of 'auth_check_bloc.dart';

@freezed
abstract class AuthCheckState with _$AuthCheckState {
  const factory AuthCheckState.initial() = Initial;
  const factory AuthCheckState.authenticated(UserModel userModel) =
      Authenticated;
  const factory AuthCheckState.unauthenticated() = Unauthenticated;
}
