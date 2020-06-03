import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:tanyain_flutter/core/feature/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    @required id,
    @required name,
    @required emailAddress,
  }) : super(
          id: id,
          name: name,
          emailAddress: emailAddress,
        );

  static UserModel fromFirebaseUser(FirebaseUser firebaseUser) {
    if (firebaseUser == null) return null;
    return UserModel(
      id: firebaseUser.uid,
      name: firebaseUser.displayName ?? firebaseUser.email.split('@').first,
      emailAddress: firebaseUser.email,
    );
  }
}
