import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kvebek/domain/auth/i_auth_facade.dart';
import 'package:kvebek/domain/core/errors.dart';
import 'package:kvebek/injection.dart';

//TODO: check again.
extension FirestoreX on FirebaseFirestore {
  Future<CollectionReference> boisCollection() async {
    return FirebaseFirestore.instance.collection('boyz');
  }

  Future<String> currentBoi() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return user.id.getOrCrash();
  }
}
