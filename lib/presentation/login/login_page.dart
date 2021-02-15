import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kvebek/application/log_in_bloc/log_in_bloc.dart';

import '../../injection.dart';
import 'login_body.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocProvider(
          create: (context) => getIt<LogInBloc>(),
          child: LogInBody(),
        ),
      ),
    );
  }
}
