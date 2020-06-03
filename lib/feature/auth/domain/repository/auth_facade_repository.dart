import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/failure/auth_failure.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';

abstract class AuthFacadeRepository {
  Future<Option<UserModel>> getLoggedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword();
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword();
  Future<Either<AuthFailure, Unit>> loginWithGoogle();
  Future<void> logout();
}
