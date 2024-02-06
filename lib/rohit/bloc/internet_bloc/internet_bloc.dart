import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:learning_bloc/rohit/bloc/internet_bloc/internet_event.dart';
import 'package:learning_bloc/rohit/bloc/internet_bloc/internet_state.dart';

class InternetBloc extends Bloc<InternetEvent,InternetState> {
  final _connectivity = Connectivity();
  StreamSubscription? streamSubscription;
  InternetBloc() : super(InitialInternetState()) {
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
    on<InternetGainedEvent>((event, emit) => emit(InternetGainedState()));

    streamSubscription = _connectivity.onConnectivityChanged.listen((result) {
      if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        add(InternetGainedEvent());
      } else {
        add(InternetLostEvent());
      }
    });
  }
  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}