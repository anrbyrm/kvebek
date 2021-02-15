import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:kvebek/domain/auth/account.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import 'firebase_user_extension.dart';

class UserNotFoundException implements Exception {}

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(
    this._firebaseAuth,
  );

  @override
  Future<Either<AuthFailure, Unit>> signInwithEmailAndPassword({
    String name,
    String password,
  }) async {
    final emailStr = '$name@gmail.com';

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailStr,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.wrongNameOrPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<Account>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toUser());

  @override
  Future<void> signOut() async => _firebaseAuth.signOut();
}
