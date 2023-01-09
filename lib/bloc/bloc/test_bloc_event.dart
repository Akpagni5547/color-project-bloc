part of 'test_bloc_bloc.dart';

abstract class FlagEvent extends Equatable {
  const FlagEvent();

  @override
  List<Object> get props => [];
}
/*
class LoadFlag extends FlagEvent {
  const LoadFlag({required this.couleurs});
  final Flag couleurs;
}
*/
class UpdateFlag extends FlagEvent {
   UpdateFlag({required this.couleurs});
  final Flag couleurs;
}

class ResetFlag extends FlagEvent {
  ResetFlag({required this.couleurs});
  final Flag couleurs;
}
