import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kvebek/application/auth/bloc/auth_bloc.dart';
import 'package:kvebek/presentation/routes/routes.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              Future.delayed(const Duration(milliseconds: 1500), () {
            ExtendedNavigator.of(context).replace(Routes.boisOverviewPage);
          }),
          unauthenticated: (_) =>
              Future.delayed(const Duration(milliseconds: 2000), () {
            ExtendedNavigator.of(context).replace(Routes.logInPage);
          }),
        );
      },
      child: Scaffold(
          body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset('assets/images/splash_image.png'),
        ),
      )),
    );
  }
}
