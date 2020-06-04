import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:tanyain_flutter/core/failure/server_failure.dart';
import 'package:tanyain_flutter/core/feature/data/datasource/user_remote_datasource.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';
import 'package:tanyain_flutter/core/feature/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource userRemoteDatasource;

  UserRepositoryImpl({
    this.userRemoteDatasource,
  });

  @override
  Future<Either<Failure, UserModel>> getCurrentUser() async {
    try {
      final currentUser = await userRemoteDatasource.getCurrentUser();
      return right(currentUser);
    } on PlatformException {
      return left(ServerFailure());
    }
  }
}
