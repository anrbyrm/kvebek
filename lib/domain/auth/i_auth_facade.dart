import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kvebek/domain/auth/account.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<Account>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInwithEmailAndPassword(
      {@required String name, @required String password});
  Future<void> signOut();
}
