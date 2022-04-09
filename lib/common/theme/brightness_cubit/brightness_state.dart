part of 'brightness_cubit.dart';

enum BrightnessStatus {
  light,
  dark,
  system,
}

class BrightnessState extends Equatable {
  const BrightnessState({
    this.brightnessState = BrightnessStatus.system,
  });

  final BrightnessStatus brightnessState;
  @override
  List<Object> get props => [brightnessState];
}
