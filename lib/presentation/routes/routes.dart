import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:kvebek/presentation/bois/bois_detail/bois_detail_page.dart';
import 'package:kvebek/presentation/bois/bois_overview/bois_overview_page.dart';
import 'package:kvebek/presentation/bois/details/detail_page.dart';
import 'package:kvebek/presentation/login/login_page.dart';
import 'package:kvebek/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: LogInPage),
      CustomRoute(
          page: BoisOverviewPage,
          transitionsBuilder: TransitionsBuilders.slideLeft),
      CustomRoute(
        page: BoisDetailPage,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      ),
      CustomRoute(
        page: DetailPage,
        transitionsBuilder: TransitionsBuilders.slideLeft,
      ),
    ])
class $CustomRouter {}
