import 'package:auto_route/auto_route.dart';
import 'package:kvebek/presentation/routes/routes.gr.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:kvebek/domain/bois/boi.dart';

class CurrentBoiCard extends StatelessWidget {
  final Boi boi;

  const CurrentBoiCard({
    Key key,
    @required this.boi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 7.5,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      boi.name,
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                    ),
                    Text(
                      boi.fullName,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              IconButton(
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                    size: 20,
                  ),
                  onPressed: () {
                    ExtendedNavigator.of(context)
                        .pushBoisDetailPage(currentBoi: boi);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
