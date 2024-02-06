import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/rivaan/boc_again/again_counter_event.dart';

class AgainCounterBloc extends Bloc<AgainCounterEvent,int> {
  AgainCounterBloc() : super(0) {
    on<AgainCounterIncremented>((event, emit) => emit(state+1));
    on<AgainCounterDecremented>((event, emit) => emit(state-1));
  }
}