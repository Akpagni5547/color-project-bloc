part of 'color_bloc.dart';


abstract class ColorState extends Equatable {
  const ColorState();
}

class ColorInitial extends ColorState {
  @override
  List<Object> get props => [];
}


class ColorLoaded extends ColorState {
  final Drapeau drapeauSelected;
  const ColorLoaded(this.drapeauSelected);

  @override
  List<Object> get props => [drapeauSelected];
}

class Drapeau {
  final Color primaryColor;
  final Color secondaryColor;
  final Color tertiaryColor;



  Drapeau({required this.primaryColor, required this.secondaryColor, required this.tertiaryColor});
}