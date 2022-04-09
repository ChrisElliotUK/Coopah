part of 'video_bloc.dart';

abstract class VideoEvent extends Equatable {
  const VideoEvent();

  @override
  List<Object> get props => [];
}

class IntializeVideo extends VideoEvent {
  final String url;
  final bool autoPlay;
  final bool controlsVisible;

  const IntializeVideo({
    required this.url,
    required this.autoPlay,
    required this.controlsVisible,
  });

  @override
  List<Object> get props => [url, autoPlay, controlsVisible];
}

class TogglePlay extends VideoEvent {}

class ToggleControls extends VideoEvent {}

class SetVolume extends VideoEvent {
  final double volume;

  const SetVolume({required this.volume});

  @override
  List<Object> get props => [volume];
}

class ToggleMute extends VideoEvent {}
