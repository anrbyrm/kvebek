import 'package:firebase_auth/firebase_auth.dart';
import 'package:kvebek/domain/auth/account.dart';
import 'package:kvebek/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  Account toUser() {
    return Account(id: UniqueId.fromUniqueString(uid));
  }
}
