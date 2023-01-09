import 'package:bloc/bloc.dart';
import 'package:bloc_design_pattern/bloc/bloc/Flags/Flags.dart';
import 'package:equatable/equatable.dart';

part 'test_bloc_event.dart';
part 'test_bloc_state.dart';

class FlagBloc extends Bloc<FlagEvent, FlagState> {
  FlagBloc(super.initialState);





  void onchangeFlag(UpdateFlag event, Emitter<FlagState> emit) {
    //drapeaux
    var drapeau = Flag();

   // emit();
  }

    void onresetFlag(ResetFlag event, Emitter<FlagState> emit) {
   // emit();
  }
}
