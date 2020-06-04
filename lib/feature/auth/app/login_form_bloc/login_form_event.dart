part of 'login_form_bloc.dart';

@immutable
abstract class LoginFormEvent {}

class LoginInWithEmailAndPasswordPressedEvent extends LoginFormEvent {}

class LoginWithGooglePressedEvent extends LoginFormEvent {}
