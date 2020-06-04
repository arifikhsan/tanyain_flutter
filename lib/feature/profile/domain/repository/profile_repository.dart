import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, UserModel>> getCurrentUser();
}
