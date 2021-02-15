// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/bois/boi.dart';
import '../bois/bois_detail/bois_detail_page.dart';
import '../bois/bois_overview/bois_overview_page.dart';
import '../bois/details/detail_page.dart';
import '../login/login_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String logInPage = '/log-in-page';
  static const String boisOverviewPage = '/bois-overview-page';
  static const String boisDetailPage = '/bois-detail-page';
  static const String detailPage = '/detail-page';
  static const all = <String>{
    splashPage,
    logInPage,
    boisOverviewPage,
    boisDetailPage,
    detailPage,
  };
}

class CustomRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.logInPage, page: LogInPage),
    RouteDef(Routes.boisOverviewPage, page: BoisOverviewPage),
    RouteDef(Routes.boisDetailPage, page: BoisDetailPage),
    RouteDef(Routes.detailPage, page: DetailPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashPage(),
        settings: data,
      );
    },
    LogInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LogInPage(),
        settings: data,
      );
    },
    BoisOverviewPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            BoisOverviewPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
      );
    },
    BoisDetailPage: (data) {
      final args = data.getArgs<BoisDetailPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            BoisDetailPage(currentBoi: args.currentBoi),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      );
    },
    DetailPage: (data) {
      final args = data.getArgs<DetailPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => DetailPage(
          boi: args.boi,
          key: args.key,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension CustomRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushLogInPage() => push<dynamic>(Routes.logInPage);

  Future<dynamic> pushBoisOverviewPage() =>
      push<dynamic>(Routes.boisOverviewPage);

  Future<dynamic> pushBoisDetailPage({
    @required Boi currentBoi,
  }) =>
      push<dynamic>(
        Routes.boisDetailPage,
        arguments: BoisDetailPageArguments(currentBoi: currentBoi),
      );

  Future<dynamic> pushDetailPage({
    @required Boi boi,
    Key key,
  }) =>
      push<dynamic>(
        Routes.detailPage,
        arguments: DetailPageArguments(boi: boi, key: key),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// BoisDetailPage arguments holder class
class BoisDetailPageArguments {
  final Boi currentBoi;
  BoisDetailPageArguments({@required this.currentBoi});
}

/// DetailPage arguments holder class
class DetailPageArguments {
  final Boi boi;
  final Key key;
  DetailPageArguments({@required this.boi, this.key});
}
