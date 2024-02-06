import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
enum Internet {lost,gain,initial}
class InternetCubit extends Cubit<Internet> {
  final _connectivity = Connectivity();
  StreamSubscription? streamSubscription;
  InternetCubit() : super(Internet.initial) {
    streamSubscription = _connectivity.onConnectivityChanged.listen((result) {
      if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        emit(Internet.gain);
      } else {
        emit(Internet.lost);
      }
    });
  }
  @override
  Future<void> close() {
    // TODO: implement close
    streamSubscription?.cancel();
    return super.close();

  }
}