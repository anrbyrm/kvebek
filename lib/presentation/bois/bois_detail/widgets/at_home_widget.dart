import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kvebek/application/bois/boi_detail/boi_detail_bloc.dart';
import 'package:kvebek/domain/bois/boi.dart';

class AtHomeWidget extends StatelessWidget {
  final Boi currentBoi;

  const AtHomeWidget({Key key, @required this.currentBoi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 45,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: Colors.white),
        ),
        splashColor: ThemeData.dark().splashColor,
        color: Colors.white,
        textColor: Colors.black,
        disabledTextColor: Colors.white,
        disabledColor: Colors.transparent,
        onPressed: isOut(currentBoi)
            ? () {
                context
                    .read<BoiDetailBloc>()
                    .add(const BoiDetailEvent.atHomeSaved());
              }
            : null,
        child: const Text(
          'Evdəyəm dosi',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

bool isOut(Boi currentBoi) {
  if (DateTime.now().isAfter(
          DateTime.fromMillisecondsSinceEpoch(currentBoi.hachan.value)) &&
      currentBoi.placeName.isNotEmpty()) {
    return true;
  } else {
    return false;
  }
}
