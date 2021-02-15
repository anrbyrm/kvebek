import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kvebek/application/auth/bloc/auth_bloc.dart';
import 'package:kvebek/presentation/routes/routes.gr.dart';
import 'package:kvebek/theme.dart';

import '../../injection.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheck()),
        ),
      ],
      child: MaterialApp(
        builder: ExtendedNavigator(
          router: CustomRouter(),
        ),
        debugShowCheckedModeBanner: false,
        theme: AppTheme.dark,
      ),
    );
  }
}
