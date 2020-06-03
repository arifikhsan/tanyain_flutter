// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPasswordPressed();
  }

  LoginWithEmailAndPasswordPressed loginInWithEmailAndPasswordPressed() {
    return const LoginWithEmailAndPasswordPressed();
  }

  LoginWithGooglePressed loginWithGooglePressed() {
    return const LoginWithGooglePressed();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result loginInWithEmailAndPasswordPressed(),
    @required Result loginWithGooglePressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(),
    Result loginInWithEmailAndPasswordPressed(),
    Result loginWithGooglePressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result loginInWithEmailAndPasswordPressed(
            LoginWithEmailAndPasswordPressed value),
    @required Result loginWithGooglePressed(LoginWithGooglePressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result loginInWithEmailAndPasswordPressed(
        LoginWithEmailAndPasswordPressed value),
    Result loginWithGooglePressed(LoginWithGooglePressed value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'AuthEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result loginInWithEmailAndPasswordPressed(),
    @required Result loginWithGooglePressed(),
  }) {
    assert(registerWithEmailAndPasswordPressed != null);
    assert(loginInWithEmailAndPasswordPressed != null);
    assert(loginWithGooglePressed != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(),
    Result loginInWithEmailAndPasswordPressed(),
    Result loginWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result loginInWithEmailAndPasswordPressed(
            LoginWithEmailAndPasswordPressed value),
    @required Result loginWithGooglePressed(LoginWithGooglePressed value),
  }) {
    assert(registerWithEmailAndPasswordPressed != null);
    assert(loginInWithEmailAndPasswordPressed != null);
    assert(loginWithGooglePressed != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result loginInWithEmailAndPasswordPressed(
        LoginWithEmailAndPasswordPressed value),
    Result loginWithGooglePressed(LoginWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements AuthEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

abstract class $LoginWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $LoginWithEmailAndPasswordPressedCopyWith(
          LoginWithEmailAndPasswordPressed value,
          $Res Function(LoginWithEmailAndPasswordPressed) then) =
      _$LoginWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

class _$LoginWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $LoginWithEmailAndPasswordPressedCopyWith<$Res> {
  _$LoginWithEmailAndPasswordPressedCopyWithImpl(
      LoginWithEmailAndPasswordPressed _value,
      $Res Function(LoginWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as LoginWithEmailAndPasswordPressed));

  @override
  LoginWithEmailAndPasswordPressed get _value =>
      super._value as LoginWithEmailAndPasswordPressed;
}

class _$LoginWithEmailAndPasswordPressed
    implements LoginWithEmailAndPasswordPressed {
  const _$LoginWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'AuthEvent.loginInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result loginInWithEmailAndPasswordPressed(),
    @required Result loginWithGooglePressed(),
  }) {
    assert(registerWithEmailAndPasswordPressed != null);
    assert(loginInWithEmailAndPasswordPressed != null);
    assert(loginWithGooglePressed != null);
    return loginInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(),
    Result loginInWithEmailAndPasswordPressed(),
    Result loginWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginInWithEmailAndPasswordPressed != null) {
      return loginInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result loginInWithEmailAndPasswordPressed(
            LoginWithEmailAndPasswordPressed value),
    @required Result loginWithGooglePressed(LoginWithGooglePressed value),
  }) {
    assert(registerWithEmailAndPasswordPressed != null);
    assert(loginInWithEmailAndPasswordPressed != null);
    assert(loginWithGooglePressed != null);
    return loginInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result loginInWithEmailAndPasswordPressed(
        LoginWithEmailAndPasswordPressed value),
    Result loginWithGooglePressed(LoginWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginInWithEmailAndPasswordPressed != null) {
      return loginInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailAndPasswordPressed implements AuthEvent {
  const factory LoginWithEmailAndPasswordPressed() =
      _$LoginWithEmailAndPasswordPressed;
}

abstract class $LoginWithGooglePressedCopyWith<$Res> {
  factory $LoginWithGooglePressedCopyWith(LoginWithGooglePressed value,
          $Res Function(LoginWithGooglePressed) then) =
      _$LoginWithGooglePressedCopyWithImpl<$Res>;
}

class _$LoginWithGooglePressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $LoginWithGooglePressedCopyWith<$Res> {
  _$LoginWithGooglePressedCopyWithImpl(LoginWithGooglePressed _value,
      $Res Function(LoginWithGooglePressed) _then)
      : super(_value, (v) => _then(v as LoginWithGooglePressed));

  @override
  LoginWithGooglePressed get _value => super._value as LoginWithGooglePressed;
}

class _$LoginWithGooglePressed implements LoginWithGooglePressed {
  const _$LoginWithGooglePressed();

  @override
  String toString() {
    return 'AuthEvent.loginWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result loginInWithEmailAndPasswordPressed(),
    @required Result loginWithGooglePressed(),
  }) {
    assert(registerWithEmailAndPasswordPressed != null);
    assert(loginInWithEmailAndPasswordPressed != null);
    assert(loginWithGooglePressed != null);
    return loginWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(),
    Result loginInWithEmailAndPasswordPressed(),
    Result loginWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGooglePressed != null) {
      return loginWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result loginInWithEmailAndPasswordPressed(
            LoginWithEmailAndPasswordPressed value),
    @required Result loginWithGooglePressed(LoginWithGooglePressed value),
  }) {
    assert(registerWithEmailAndPasswordPressed != null);
    assert(loginInWithEmailAndPasswordPressed != null);
    assert(loginWithGooglePressed != null);
    return loginWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result loginInWithEmailAndPasswordPressed(
        LoginWithEmailAndPasswordPressed value),
    Result loginWithGooglePressed(LoginWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGooglePressed != null) {
      return loginWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class LoginWithGooglePressed implements AuthEvent {
  const factory LoginWithGooglePressed() = _$LoginWithGooglePressed;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {@required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _AuthState(
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $AuthStateCopyWith<AuthState> get copyWith;
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_AuthState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {@required this.isSubmitting, @required this.authFailureOrSuccessOption})
      : assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthState(isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
          {@required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_AuthState;

  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith;
}
