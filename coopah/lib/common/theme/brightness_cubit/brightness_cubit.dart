import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'brightness_state.dart';

class BrightnessCubit extends Cubit<BrightnessState> {
  BrightnessCubit() : super(const BrightnessState());

  void setBrightness(BrightnessStatus brightnessState) =>
      emit(BrightnessState(brightnessState: brightnessState));
}
