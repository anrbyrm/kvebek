import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kvebek/domain/bois/boi_failure.dart';
import 'package:kvebek/domain/bois/boi.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

import 'package:kvebek/domain/bois/i_boi_repository.dart';
import 'package:kvebek/infrastructure/bois/boi_dtos.dart';
import '../core/firestore_helpers.dart';

@LazySingleton(as: IBoiRepository)
class BoiRepository implements IBoiRepository {
  final FirebaseFirestore _firestore;

  BoiRepository(this._firestore);

  @override
  Future<Either<BoiFailure, Unit>> update(Boi boi) async {
    try {
      final boiCol = await _firestore.boisCollection();
      final boiDto = BoiDto.fromDomain(boi);

      final json = boiDto.toJson();
      //TODO: If get error from this await change in to something that works.
      await boiCol.doc(boiDto.id).update(json);

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const BoiFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const BoiFailure.unableToUpdate());
      } else {
        return left(const BoiFailure.unexpected());
      }
    }
  }

  @override
  Stream<Boi> watchCurrentBoi() async* {
    final boisCol = await _firestore.boisCollection();
    final currentBoiId = await _firestore.currentBoi();

    yield* boisCol.doc(currentBoiId).snapshots().map(
          (boi) => BoiDto.fromFirestore(boi).toDomain(),
        );
  }

  @override
  Stream<Either<BoiFailure, List<Boi>>> watchAll() async* {
    //boyz/allDocs
    final boisCol = await _firestore.boisCollection();
    final currentBoi = await _firestore.currentBoi();

    yield* boisCol
        .orderBy('name')
        .snapshots()
        .map((snapshot) => right<BoiFailure, List<Boi>>(snapshot.docs
            .map((doc) => BoiDto.fromFirestore(doc).toDomain())
            .where((boi) => boi.id.getOrCrash() != currentBoi)
            .toList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const BoiFailure.insufficientPermissions());
      } else {
        // return log.error(e.toString());
        return left(const BoiFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<BoiFailure, List<Boi>>> watchAllIncludeCurrentBoi() {
    return Rx.combineLatest2(watchAll(), watchCurrentBoi(),
        (Either<BoiFailure, List<Boi>> listBois, Boi currentBoi) {
      listBois.fold((failure) => left(failure), (bois) => bois.add(currentBoi));

      return listBois;
    });
  }
}

// Stream<Either<BoiFailure, List<Boi>>> watchOutside() async* {
//   final boisCol = await _firestore.boisCollection();
//   yield* boisCol
//       .snapshots()
//       .map((snapshot) => snapshot.docs.map(
//             (doc) => BoiDto.fromFirestore(doc).toDomain(),
//           ))
//       .map((bois) => right<BoiFailure, List<Boi>>(
//           bois.where((boi) => boi.outsideOrNot == true).toList()))
//       .onErrorReturnWith((e) {
//     if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
//       return left(const BoiFailure.insufficientPermissions());
//     } else {
//       // return log.error(e.toString());
//       return left(const BoiFailure.unexpected());
//     }
//   });
// }
