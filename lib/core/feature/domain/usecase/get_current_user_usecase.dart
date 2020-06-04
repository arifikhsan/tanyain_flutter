import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';
import 'package:tanyain_flutter/core/feature/domain/repository/user_repository.dart';
import 'package:tanyain_flutter/core/usecase/no_param.dart';
import 'package:tanyain_flutter/core/usecase/usecase.dart';

@lazySingleton
class GetCurrentUserUsecase implements Usecase<UserModel, NoParam> {
  final UserRepository userRepository;

  GetCurrentUserUsecase(this.userRepository);

  @override
  Future<Either<Failure, UserModel>> call(NoParam params) async {
    return await userRepository.getCurrentUser();
  }
}
