import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';

abstract class AuthRemoteDatasource {
  Future<UserModel> getCurrentUser();
  Future<void> loginWithGoogle();
  Future<void> logout();
}

@LazySingleton(as: AuthRemoteDatasource)
class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  AuthRemoteDatasourceImpl({
    this.firebaseAuth,
    this.googleSignIn,
  });

  @override
  Future<UserModel> getCurrentUser() {
    throw UnimplementedError();
  }

  @override
  Future<void> loginWithGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }
}
