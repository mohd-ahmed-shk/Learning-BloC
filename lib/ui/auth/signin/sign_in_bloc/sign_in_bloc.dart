import 'package:bloc/bloc.dart';
import 'package:learning_bloc/ui/auth/signin/sign_in_bloc/sign_in_event.dart';
import 'package:learning_bloc/ui/auth/signin/sign_in_bloc/sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent,SignInState> {
  SignInBloc() : super(SignInInitialState()) {
    on<SignInTextChangedEvent>((event, emit) {
      if(event.emailValue.isEmpty) {
        emit(SignInError("Please Enter Something"));
      } else {
        emit(SignInValidState());
      }
    });

    on<SignInSubmitted>((event, emit) {
      emit(SignInLoadingState());
    });
  }
}