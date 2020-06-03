import 'package:dartz/dartz.dart';
import 'package:tanyain_flutter/core/failure/auth_failure.dart';
import 'package:tanyain_flutter/core/usecase/auth_usecase.dart';
import 'package:tanyain_flutter/core/usecase/no_param.dart';
import 'package:tanyain_flutter/feature/auth/domain/repository/auth_facade_repository.dart';

class LoginWithGoogleUsecase implements AuthUsecase<Unit, NoParam> {
  final AuthFacadeRepository authFacadeRepository;

  LoginWithGoogleUsecase(this.authFacadeRepository);

  @override
  Future<Either<AuthFailure, Unit>> call(NoParam params) async {
    return await authFacadeRepository.loginWithGoogle();
  }
}
