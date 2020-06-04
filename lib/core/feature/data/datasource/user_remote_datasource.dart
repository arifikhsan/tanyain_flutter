import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';

abstract class UserRemoteDatasource {
  Future<UserModel> getCurrentUser();
}

class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final FirebaseAuth firebaseAuth;

  UserRemoteDatasourceImpl({
    @required this.firebaseAuth,
  });

  @override
  Future<UserModel> getCurrentUser() async {
    final firebaseUser = await firebaseAuth.currentUser();
    return UserModel.fromFirebaseUser(firebaseUser);
  }
}
