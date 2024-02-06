abstract class BlocState {}

class InitialState extends BlocState {
  final double value;
  InitialState(this.value);

}

class UpdatedState extends BlocState {
  final double value;

  UpdatedState(this.value);
}