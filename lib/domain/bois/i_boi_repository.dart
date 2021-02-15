import 'package:dartz/dartz.dart';
import 'package:kvebek/domain/bois/boi_failure.dart';

import 'boi.dart';

abstract class IBoiRepository {
  // Colde ve evde olanlari secmek uchun funksiya
  Stream<Either<BoiFailure, List<Boi>>> watchAll();

  // Sadece colde olanlari secmek uchun funksiya
  // Stream<Either<BoiFailure, List<Boi>>> watchOutside();

  // Hazirki useri serverden dartmagh uchun funksiya
  Stream<Boi> watchCurrentBoi();

  // Current boi daxil olan list combine eliyen funksiya
  Stream<Either<BoiFailure, List<Boi>>> watchAllIncludeCurrentBoi();

  // Userlerin statuslarini updatemelek uchun funksiya
  Future<Either<BoiFailure, Unit>> update(Boi boi);
}
