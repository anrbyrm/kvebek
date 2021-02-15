import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kvebek/application/bois/boi_watcher/boi_watcher_bloc.dart';
import 'package:kvebek/injection.dart';
import 'package:kvebek/presentation/bois/bois_overview/bois_overview_body.dart';
import 'package:kvebek/presentation/routes/routes.gr.dart';
import 'package:kvebek/application/auth/bloc/auth_bloc.dart';

class BoisOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<BoiWatcherBloc>()..add(const BoiWatcherEvent.watchAllStarted()),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) =>
                ExtendedNavigator.of(context).push(Routes.logInPage),
            orElse: () {},
          );
        },
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Dusenvar',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              // actions: [
              //   UncompletedSwitch(),
              //   IconButton(
              //     padding: const EdgeInsets.only(top: 5, right: 5),
              //     icon: const Icon(Icons.person_outline),
              //     onPressed: () {
              //       ExtendedNavigator.of(context).push(Routes.boisDetailPage);
              //     },
              //     splashColor: Colors.transparent,
              //     hoverColor: Colors.transparent,
              //     highlightColor: Colors.transparent,
              //   ),
              // ],
            ),
            body: BoisOverviewBody(),
          ),
        ),
      ),
    );
  }
}
