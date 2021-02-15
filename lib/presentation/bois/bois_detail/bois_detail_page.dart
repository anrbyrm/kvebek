import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kvebek/application/auth/bloc/auth_bloc.dart';
import 'package:kvebek/application/bois/boi_detail/boi_detail_bloc.dart';
import 'package:kvebek/injection.dart';
import 'package:kvebek/presentation/bois/bois_detail/widgets/at_home_widget.dart';
import 'package:kvebek/presentation/bois/bois_detail/widgets/with_car_check.dart';
import 'package:kvebek/presentation/bois/bois_detail/widgets/place_name.dart';
import 'package:kvebek/presentation/bois/bois_detail/widgets/time_picker.dart';
import 'package:kvebek/presentation/routes/routes.gr.dart';
import 'package:kvebek/theme.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kvebek/domain/bois/boi.dart';

class BoisDetailPage extends StatelessWidget {
  final Boi currentBoi;

  const BoisDetailPage({@required this.currentBoi});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<BoiDetailBloc>()
          ..add(BoiDetailEvent.initialized(optionOf(currentBoi))),
        child: BlocConsumer<BoiDetailBloc, BoiDetailState>(
          listenWhen: (p, c) =>
              p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(() {}, (either) {
              either.fold((failure) {
                Scaffold.of(context).showSnackBar(SnackBar(
                    content: failure.map(
                  insufficientPermissions: (_) =>
                      const Text('Bunu dəyişəmməzsən dosi.'),
                  unableToUpdate: (_) =>
                      const Text('Saxlıyanda xəta oldu. Təzədən yoxla'),
                  unexpected: (_) => const Text('Xəta oldu dosi.'),
                  deleted: (_) => const Text('Hesab silinib.'),
                )));
              }, (_) {
                ExtendedNavigator.of(context).popUntil(
                  (route) => route.settings.name == Routes.boisOverviewPage,
                );
              });
            });
          },
          buildWhen: (p, c) => p.isSaving != c.isSaving,
          builder: (context, state) {
            return Stack(
              children: [
                BoisDetailScaffold(currentBoi: currentBoi),
                SavingLayout(isSaving: state.isSaving),
              ],
            );
          },
        ));
  }
}

class BoisDetailScaffold extends HookWidget {
  final Boi currentBoi;

  const BoisDetailScaffold({this.currentBoi});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text(
              'Status',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            actions: [
              BlocBuilder<BoiDetailBloc, BoiDetailState>(
                builder: (context, state) {
                  if (state.isEditing &&
                      state.boi.placeName.isValid() &&
                      state.boi.placeName.isNotEmpty()) {
                    return IconButton(
                        icon: const Icon(Icons.check),
                        onPressed: () {
                          if (state.boi.hachan.value == 1644465600000) {
                            context.read<BoiDetailBloc>().add(
                                BoiDetailEvent.timeChanged(
                                    Timestamp.now().millisecondsSinceEpoch));
                          }
                          context
                              .read<BoiDetailBloc>()
                              .add(const BoiDetailEvent.saved());
                        });
                  } else {
                    return Container();
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signOut());
                },
              ),
            ],
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: SizedBox(
                            height: 120,
                            width: 120,
                            child: BlurHash(
                              color: AppTheme.dark.primaryColor,
                              hash: currentBoi.blurHash,
                              image: currentBoi.photoUrl,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        currentBoi.name,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Stack(
                        children: const <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 60, top: 50),
                                child: Text('Hara düşürsən?')),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 50, top: 30),
                                child: PlaceNameInput()),
                          ),
                        ],
                      ),
                      Stack(
                        children: <Widget>[
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 60, top: 50),
                                child: Text('Haçan düşürsən?')),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 40, top: 35),
                                child: TimePicker()),
                          ),
                        ],
                      ),
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: currentBoi.haveCar
                                ? SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    child: const Padding(
                                        padding:
                                            EdgeInsets.only(left: 60, top: 40),
                                        child: Text('Maşın var?')))
                                : Container(),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 80, top: 25),
                              child: currentBoi.haveCar
                                  ? WithCarCheckbox()
                                  : Container(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: AtHomeWidget(currentBoi: currentBoi),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SavingLayout extends StatelessWidget {
  final bool isSaving;

  const SavingLayout({@required this.isSaving});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(strokeWidth: 1),
              const SizedBox(height: 12),
              Text(
                'Hop',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      fontSize: 14,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
