import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kvebek/application/bois/boi_detail/boi_detail_bloc.dart';

class WithCarCheckbox extends HookWidget {
  final withCarCheck = useState(false);

  @override
  Widget build(BuildContext context) {
    return BlocListener<BoiDetailBloc, BoiDetailState>(
      listener: (context, state) {
        withCarCheck.value = state.boi.withCar;
      },
      child: Checkbox(
        checkColor: Colors.white,
        value: withCarCheck.value,
        onChanged: (value) {
          withCarCheck.value = value;
          context
              .read<BoiDetailBloc>()
              .add(BoiDetailEvent.withCarChanged(withCarCheck.value));
        },
      ),
    );
  }
}
