import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/failure/auth_failure.dart';

abstract class AuthUsecase<Type, Params> {
  Future<Either<AuthFailure, Type>> call(Params params);
}
