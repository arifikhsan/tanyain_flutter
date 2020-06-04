import 'package:tanyain_flutter/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';
import 'package:tanyain_flutter/core/usecase/no_param.dart';
import 'package:tanyain_flutter/core/usecase/usecase.dart';
import 'package:tanyain_flutter/feature/profile/domain/repository/profile_repository.dart';

class GetCurrentUserUsecase implements Usecase<UserModel, NoParam> {
  final ProfileRepository profileRepository;

  GetCurrentUserUsecase(this.profileRepository);

  @override
  Future<Either<Failure, UserModel>> call(NoParam params) async {
    return await profileRepository.getCurrentUser();
  }
}
