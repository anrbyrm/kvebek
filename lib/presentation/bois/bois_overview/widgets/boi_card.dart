import 'package:intl/intl.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:kvebek/presentation/routes/routes.gr.dart';
import 'package:kvebek/theme.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:kvebek/domain/bois/boi.dart';

class BoiCard extends StatelessWidget {
  final Boi boi;

  const BoiCard({
    Key key,
    @required this.boi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ExtendedNavigator.of(context).pushDetailPage(boi: boi);
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.8,
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 7.5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(34),
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: BlurHash(
                          color: AppTheme.dark.primaryColor,
                          hash: boi.blurHash,
                          image: boi.photoUrl,
                        ),
                      ),
                    ),
                  ),
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
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      outsideOrNot(boi)
                          ? Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: Text(
                                boi.placeName.getOrCrash(),
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 10),
                                textAlign: TextAlign.end,
                              ),
                            )
                          : boi.hachan.value != Boi.empty().hachan.value
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 22),
                                  child: Text(
                                    DateFormat('HH:mm').format(
                                        DateTime.fromMillisecondsSinceEpoch(
                                            boi.hachan.value)),
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 11,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.end,
                                  ),
                                )
                              : Container(),
                      outsideOrNot(boi)
                          ? const Padding(
                              padding: EdgeInsets.only(bottom: 9, right: 5),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'Çöldədi',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.teal,
                                  ),
                                ),
                              ),
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 9, right: 5),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'Çöldə deyil',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.red[800],
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

bool outsideOrNot(Boi currentBoi) {
  if (DateTime.now().isAfter(
    DateTime.fromMillisecondsSinceEpoch(currentBoi.hachan.value),
  )) {
    return true;
  } else {
    return false;
  }
}
