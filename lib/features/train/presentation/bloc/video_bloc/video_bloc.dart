import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:video_player/video_player.dart';

part 'video_event.dart';
part 'video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  VideoBloc() : super(VideoState(controller: VideoPlayerController.asset(''))) {
    on<IntializeVideo>(_onIntializeVideo);
    on<TogglePlay>(_onTogglePlay);
    on<ToggleControls>(_onToggleControls);
    on<SetVolume>(_onSetVolume);
    on<ToggleMute>(_onToggleMute);
  }

  Future<void> _onIntializeVideo(
      IntializeVideo event, Emitter<VideoState> emit) async {
    final controller = VideoPlayerController.asset(event.url);
    await controller.initialize().then((_) {
      print(controller.value);
      print(event.url);
      emit(state.copyWith(
          loaded: true, controller: controller, errorMessage: ''));
      if (event.autoPlay) {
        state.controller.play();

        emit(state.copyWith(playing: true));
      }
    }).onError((error, stackTrace) {
      emit(state.copyWith(loaded: false, errorMessage: error.toString()));
    });
  }

  Future<void> _onTogglePlay(TogglePlay event, Emitter<VideoState> emit) async {
    if (state.playing == true) {
      state.controller.pause();
      emit(state.copyWith(playing: false));
    } else {
      state.controller.play();
      emit(state.copyWith(playing: true));
    }
  }

  Future<void> _onToggleControls(
      ToggleControls event, Emitter<VideoState> emit) async {
    print(state.controller.value);
    emit(state.copyWith(
      controlsVisible: !state.controlsVisible,
    ));

    if (state.controlsVisible != true && state.playing != true) {
      emit(state.copyWith(playing: true));
    }
  }

  Future<void> _onSetVolume(SetVolume event, Emitter<VideoState> emit) async {
    state.controller.setVolume(event.volume);
    emit(state.copyWith(volume: event.volume));
  }

  Future<void> _onToggleMute(ToggleMute event, Emitter<VideoState> emit) async {
    if (state.volume == 0) {
      state.controller.setVolume(state.volumeBeforeMute);
      emit(state.copyWith(volume: state.volumeBeforeMute));
    } else {
      state.controller.setVolume(0);
      emit(state.copyWith(volume: 0, volumeBeforeMute: state.volume));
    }
  }
}
