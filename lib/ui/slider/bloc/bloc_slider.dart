import 'package:bloc/bloc.dart';
import 'package:learning_bloc/ui/slider/bloc/bloc_event.dart';
import 'package:learning_bloc/ui/slider/bloc/bloc_state.dart';

class BlocSlider extends Bloc<BlocEvent,BlocState> {
  BlocSlider() : super(InitialState(0.0)) {
    on<ForwardEvent>((event, emit) {
      emit(UpdatedState(event.value));
    });
  }
}