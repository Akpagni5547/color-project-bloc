import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  static final List<Drapeau> colors = [Drapeau(primaryColor: Colors.greenAccent, secondaryColor: Colors.limeAccent, tertiaryColor: Colors.pink), Drapeau(primaryColor: Colors.limeAccent, secondaryColor: Colors.pink, tertiaryColor: Colors.greenAccent)];

  ColorBloc() : super(ColorInitial()) {

    on<LoadColorEvent>((event, emit) {
      emit(ColorLoaded(Drapeau(primaryColor: Colors.grey, secondaryColor: Colors.grey, tertiaryColor: Colors.grey)));
    });

    on<ColorRandomEvent>((event, emit) {
      Random random = Random();
      int randomNumber = random.nextInt(colors.length);
      emit(ColorLoaded(colors[randomNumber]));
    });

    on<ColorResetEvent>((event, emit) {
      emit(ColorLoaded(Drapeau(primaryColor: Colors.grey, secondaryColor: Colors.grey, tertiaryColor: Colors.grey)));
    });
  }
}
