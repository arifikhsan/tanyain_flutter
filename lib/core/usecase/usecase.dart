import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';

abstract class Usecase<Type, Param> {
  Future<Either<Failure, Type>> call(Param param);
}
