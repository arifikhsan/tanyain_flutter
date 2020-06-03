import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tanyain_flutter/core/failure/auth_failure.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';
import 'package:tanyain_flutter/feature/auth/domain/repository/auth_facade_repository.dart';

class FirebaseAuthFacadeRepositoryImpl implements AuthFacadeRepository {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  FirebaseAuthFacadeRepositoryImpl({
    @required this.firebaseAuth,
    @required this.googleSignIn,
  });

  @override
  Future<Option<UserModel>> getLoggedInUser() async {
    final firebaseUser = await firebaseAuth.currentUser();
    print(firebaseUser);
    return optionOf(UserModel.fromFirebaseUser(firebaseUser));
  }

  @override
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword() {
    // TODO: implement loginWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> loginWithGoogle() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return left(AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.idToken,
      );
      return firebaseAuth
          .signInWithCredential(authCredential)
          .then((value) => right(unit));
    } on PlatformException catch (_) {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword() {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    return Future.wait([
      googleSignIn.signOut(),
      firebaseAuth.signOut(),
    ]);
  }
}
