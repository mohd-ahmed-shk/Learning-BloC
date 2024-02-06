abstract class SignInEvent {

}
class SignInTextChangedEvent extends SignInEvent {
  final String emailValue;
  final String passwordValue;
  SignInTextChangedEvent(this.emailValue,this.passwordValue);
}

class SignInSubmitted extends SignInEvent {
  final String email;
  final String password;
  SignInSubmitted(this.email,this.password);
}