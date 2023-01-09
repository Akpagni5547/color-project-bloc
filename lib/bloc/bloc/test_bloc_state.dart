part of 'test_bloc_bloc.dart';

abstract class FlagState extends Equatable {
  const FlagState();
  
  @override
  List<Object> get props => [];
 // drapeaux states = 
}

class FlagInitial extends FlagState {}

class FlagUpdate extends FlagState {}

class FlagReset extends FlagState {}
