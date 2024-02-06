abstract class BlocEvent {}

class ForwardEvent extends BlocEvent {
  final double value;

  ForwardEvent(this.value);
}
