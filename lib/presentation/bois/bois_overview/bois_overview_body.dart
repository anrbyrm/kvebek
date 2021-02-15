import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kvebek/application/bois/boi_watcher/boi_watcher_bloc.dart';
import 'package:kvebek/presentation/bois/bois_overview/widgets/boi_card.dart';
import 'package:kvebek/presentation/bois/bois_overview/widgets/current_boi_card.dart';

class BoisOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoiWatcherBloc, BoiWatcherState>(
      // listener: (context, state) {
      //   state.map(
      //     initial: (_) => null,
      //     loadInProgress: (_) => null,
      //     loadSuccess: (state) => null,
      //     loadFailure: (state) => state.boiFailure.map(
      //       insufficientPermissions: (_) => Scaffold.of(context).showSnackBar(
      //         const SnackBar(
      //           content: Text('Insufficient Permissions.'),
      //         ),
      //       ),
      //       deleted: (_) => null,
      //       unexpected: (_) => null,
      //       unableToUpdate: (_) => null,
      //     ),
      //   );
      // },
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(
                  strokeWidth: 1,
                )),
            loadSuccess: (state) {
              return CustomScrollView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                slivers: [
                  SliverToBoxAdapter(
                      child: CurrentBoiCard(boi: state.boisList.last)),
                  const SliverToBoxAdapter(
                    child: Divider(
                      endIndent: 23,
                      indent: 23,
                      height: 15,
                    ),
                  ),
                  // CupertinoSliverRefreshControl(
                  //   onRefresh: () async {
                  //     context
                  //         .read<BoiWatcherBloc>()
                  //         .add(const BoiWatcherEvent.watchAllStarted());
                  //   },
                  // ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        final boi = state.boisList[index];

                        return BoiCard(
                          boi: boi,
                        );
                      },
                      childCount: state.boisList.length - 1,
                    ),
                  )
                ],
              );
            },
            loadFailure: (state) {
              return Container(
                color: Colors.blue,
                width: 200,
                height: 200,
              );
            });
      },
    );
  }
}
