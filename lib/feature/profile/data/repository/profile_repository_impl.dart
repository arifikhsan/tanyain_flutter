import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:tanyain_flutter/core/exception/server_exception.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:tanyain_flutter/core/failure/server_failure.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';
import 'package:tanyain_flutter/feature/profile/data/datasource/profile_remote_datasource.dart';
import 'package:tanyain_flutter/feature/profile/domain/repository/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDatasource profileRemoteDatasource;

  ProfileRepositoryImpl({
    this.profileRemoteDatasource,
  });

  @override
  Future<Either<Failure, UserModel>> getCurrentUser() async {
    try {
      final currentUser = await profileRemoteDatasource.getCurrentUser();
      return right(currentUser);
    } on PlatformException {
      return left(ServerFailure());
    }
  }
}
