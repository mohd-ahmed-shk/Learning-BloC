abstract class SignInState {}

class SignInInitialState extends SignInState {}


class SignInValidState extends SignInState {}


class SignInInValidState extends SignInState {}


class SignInError extends SignInState {
  final String errorMessage;
  SignInError(this.errorMessage);
}

class SignInLoadingState extends SignInState {}