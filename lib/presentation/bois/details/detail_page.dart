import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:kvebek/theme.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:kvebek/domain/bois/boi.dart';

class DetailPage extends StatelessWidget {
  final Boi boi;

  const DetailPage({
    @required this.boi,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            boi.name,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Form(
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
                        borderRadius: BorderRadius.circular(45),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: BlurHash(
                            color: AppTheme.dark.primaryColor,
                            hash: boi.blurHash,
                            image: boi.photoUrl,
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: const EdgeInsets.only(left: 60, top: 50),
                              child: willOrNot()
                                  ? const Text('Hara düşür')
                                  : const Text('Hardadı')),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 50, top: 50),
                            child: outsideOrNot()
                                ? Text(
                                    boi.placeName.getOrCrash(),
                                    style: const TextStyle(
                                        fontStyle: FontStyle.italic),
                                  )
                                : willOrNot()
                                    ? Text(
                                        boi.placeName.getOrCrash(),
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    : const Text(
                                        'Götünü sikdirir',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic),
                                      ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 60, top: 50),
                              child: Text('Nə vaxt düşür')),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 50, top: 50),
                              child: willOrNot()
                                  ? Text(
                                      formatTimeOfDay(
                                        TimeOfDay.fromDateTime(
                                          DateTime.fromMillisecondsSinceEpoch(
                                              boi.hachan.value),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold),
                                    )
                                  : const Text('-')),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 10,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 60, top: 50),
                                child: Text('Maşın var?'),
                              ),
                            )),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 50, top: 50),
                            child: boi.haveCar
                                ? outsideOrNot()
                                    ? (boi.withCar
                                        ? const Text('Var bla',
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic))
                                        : const Text('Yoxdu skm',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontStyle: FontStyle.italic)))
                                    : const Text(
                                        'Bəlkə',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic),
                                      )
                                : const Text(
                                    'Kasıbdı bu',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontStyle: FontStyle.italic),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool outsideOrNot() {
    if (DateTime.now().isAfter(
      DateTime.fromMillisecondsSinceEpoch(boi.hachan.value),
    )) {
      return true;
    } else {
      return false;
    }
  }

  bool willOrNot() {
    if (boi.hachan.value >= Timestamp.now().millisecondsSinceEpoch &&
        boi.hachan.value != 1644465600000) {
      return true;
    } else {
      return false;
    }
  }
}

String formatTimeOfDay(TimeOfDay timeOfDay) {
  final now = DateTime.now();
  final dt =
      DateTime(now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
  final format = DateFormat.Hm();
  return format.format(dt);
}
