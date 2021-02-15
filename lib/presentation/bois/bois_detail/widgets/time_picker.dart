// intl library is used to import DateFormat to code.
// for internationalization and localization

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kvebek/application/bois/boi_detail/boi_detail_bloc.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kvebek/theme.dart';

class TimePicker extends HookWidget {
  final now = DateTime.now();
  final _time = useState(TimeOfDay.now());
  final _picked = useState(TimeOfDay.now());
  final textController = useTextEditingController(
      text: DateFormat().add_jm().format(DateTime.now()));

  @override
  Widget build(BuildContext context) {
    return BlocListener<BoiDetailBloc, BoiDetailState>(
      listener: (context, state) {
        _picked.value = TimeOfDay.fromDateTime(
            DateTime.fromMillisecondsSinceEpoch(state.boi.hachan.value));
        textController.text = DateFormat().add_jm().format(
            DateTime.fromMillisecondsSinceEpoch(state.boi.hachan.value));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        child: TextField(
          textAlign: TextAlign.center,
          style: const TextStyle(fontFamily: 'Roboto', fontSize: 14),
          controller: textController,
          decoration: InputDecoration(
              hintText: DateFormat().add_jm().format(DateTime.now()),
              hintStyle: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
              ),
              // must show current time in textInputField
              contentPadding: const EdgeInsets.all(15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              filled: false),
          readOnly: true,
          onTap: () {
            getTime(context);
          },
        ),
      ),
    );
  }

  Future<void> getTime(BuildContext context) async {
    _time.value = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        confirmText: 'Tamam',
        cancelText: 'Bağla',
        helpText: 'VAXT SEÇ',
        builder: (context, child) {
          return Theme(
            data: AppTheme.timePickerDark,
            child: child,
          );
        });

    if (_time.value == null) {
      textController.text = formatTimeOfDay(_picked.value);
    } else {
      _picked.value = _time.value;
      textController.text = formatTimeOfDay(_time.value);
    }

    context.read<BoiDetailBloc>().add(BoiDetailEvent.timeChanged(
        Timestamp.fromDate(DateTime(now.year, now.month, now.day,
                _picked.value.hour, _picked.value.minute))
            .millisecondsSinceEpoch));
  }

  String formatTimeOfDay(TimeOfDay timeOfDay) {
    final now = DateTime.now();
    final dt = DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
    final format = DateFormat.jm();
    return format.format(dt);
  }
}
