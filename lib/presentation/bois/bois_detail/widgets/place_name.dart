import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kvebek/application/bois/boi_detail/boi_detail_bloc.dart';
import 'package:kvebek/domain/bois/value_objects.dart';

class PlaceNameInput extends HookWidget {
  const PlaceNameInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditContoller = useTextEditingController();

    return BlocListener<BoiDetailBloc, BoiDetailState>(
      listener: (context, state) {
        textEditContoller.text = state.boi.placeName.getOrCrash();

        textEditContoller.selection = TextSelection.fromPosition(
            TextPosition(offset: textEditContoller.text.length));
      },
      child: SizedBox(
        width: 120,
        child: BlocBuilder<BoiDetailBloc, BoiDetailState>(
            builder: (context, state) {
          return TextFormField(
            controller: textEditContoller,
            maxLength: PlaceName.maxLength,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              alignLabelWithHint: true,
              labelStyle: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 14.0,
                  fontFamily: 'Raleway'),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.white),
              ),
            ),
            onChanged: (value) => context
                .read<BoiDetailBloc>()
                .add(BoiDetailEvent.placeNameChanged(value)),
            validator: (_) =>
                context.read<BoiDetailBloc>().state.boi.placeName.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'Boş saxlama dosi',
                        exceedingLength: (f) => 'Biraz uzun oldu',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
          );
        }),
      ),
    );
  }
}
