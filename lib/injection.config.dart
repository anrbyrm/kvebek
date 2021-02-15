// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:cloud_firestore/cloud_firestore.dart';
// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/bloc/auth_bloc.dart';
import 'application/bois/boi_detail/boi_detail_bloc.dart';
import 'application/bois/boi_watcher/boi_watcher_bloc.dart';
import 'application/log_in_bloc/log_in_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/bois/i_boi_repository.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/bois/boi_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(get<FirebaseAuth>()));
  gh.lazySingleton<IBoiRepository>(
      () => BoiRepository(get<FirebaseFirestore>()));
  gh.factory<LogInBloc>(() => LogInBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<BoiDetailBloc>(() => BoiDetailBloc(get<IBoiRepository>()));
  gh.factory<BoiWatcherBloc>(() => BoiWatcherBloc(get<IBoiRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
