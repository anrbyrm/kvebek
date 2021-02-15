import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kvebek/application/auth/bloc/auth_bloc.dart';

import 'package:kvebek/application/log_in_bloc/log_in_bloc.dart';
import 'package:kvebek/presentation/login/widget/alert_dialog.dart';
import 'package:kvebek/presentation/routes/routes.gr.dart';

class LogInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<LogInBloc, LogInState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialog(
                      title: failure.map(
                        serverError: (_) => 'Server xətası!',
                        wrongNameOrPassword: (_) => 'Ad ya da kod xətası',
                      ),
                      description: failure.map(
                        serverError: (_) =>
                            'Serverdə xəta oldu bratan. Yenidən yoxla.',
                        wrongNameOrPassword: (_) =>
                            'Adı ya da kodu səhv yazmısan. Dəyişib yenidən yoxla brat.',
                      ),
                    );
                  }),
              (_) {
                ExtendedNavigator.of(context).replace(Routes.boisOverviewPage);
                context.read<AuthBloc>().add(const AuthEvent.authCheck());
              },
            ),
          );
        },
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              Align(
                alignment: const Alignment(0, -0.8 / 3),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Kvebek'.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0),
                    ),
                    const Text(
                      'Oğlan Məclisi.',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 70.0,
                    ),
                    Form(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 42.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                                hintText: 'Ad',
                                labelStyle: TextStyle(
                                  color: Colors.grey[200],
                                  fontSize: 14.0,
                                ),
                                errorText:
                                    state.name.invalid ? 'Adıvı yaz.' : null,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: InputBorder.none,
                              ),
                              cursorWidth: 1.0,
                              autocorrect: false,
                              key: const Key('login_nameInput'),
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.sentences,
                              onChanged: (value) {
                                if (!value.contains(' ')) {
                                  context
                                      .read<LogInBloc>()
                                      .add(LogInEvent.nameChanged(value));
                                }
                              },
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 42.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                                labelStyle: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 14.0,
                                    fontFamily: 'Raleway'),
                                hintText: 'Kod',
                                errorText: state.password.invalid
                                    ? 'Yazdığın kod qısadı brat.'
                                    : null,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: InputBorder.none,
                              ),
                              cursorWidth: 1.0,
                              autocorrect: false,
                              key: const Key('login_passInput'),
                              obscureText: true,
                              onChanged: (value) => context
                                  .read<LogInBloc>()
                                  .add(LogInEvent.passwordChanged(value)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    _LogInButton(),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    '©Anar Bayram.',
                    style: TextStyle(fontFamily: 'Raleway', fontSize: 9.0),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class _LogInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogInBloc, LogInState>(
      builder: (context, state) {
        return state.isSubmitting
            ? const SizedBox(
                width: double.infinity,
                height: 50.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 42.0),
                  child: RaisedButton(
                    onPressed: null,
                    color: Colors.white,
                    disabledTextColor: Colors.white,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.black,
                      strokeWidth: 1,
                    ),
                  ),
                ),
              )
            : SizedBox(
                width: double.infinity,
                height: 50.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 42.0),
                  child: RaisedButton(
                    onPressed: (state.name.valid &&
                            state.password.valid &&
                            !state.isFailure)
                        ? () {
                            context.read<LogInBloc>().add(
                                const LogInEvent.signInWithNameAndPassword());
                          }
                        : null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(color: Colors.white, width: 0.5),
                    ),
                    color: Colors.white,
                    textColor: Colors.black,
                    disabledTextColor: Colors.white,
                    disabledColor: Colors.transparent,
                    child: const Text(
                      'İçəri gir',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              );
      },
    );
  }
}
