part of 'video_bloc.dart';

class VideoState extends Equatable {
  const VideoState({
    required this.controller,
    this.loaded = false,
    this.controlsVisible = true,
    this.controlsVisiblePrevious = false,
    this.playing = false,
    this.volume = 0.5,
    this.volumeBeforeMute = 0.5,
    this.errorMessage = '',
  });

  final String errorMessage;
  final VideoPlayerController controller;
  final bool loaded;
  final bool controlsVisible;
  final bool controlsVisiblePrevious;
  final bool playing;
  final double volume;
  final double volumeBeforeMute;

  /// Convinience getters
  bool get notLoaded => !loaded;
  bool get visibilityChanged => controlsVisible != controlsVisiblePrevious;
  bool get visibilityNotChanged => !visibilityChanged;
  bool get notPlaying => !playing;
  bool get controlsNotVisible => !controlsVisible;
  bool get mute => volume <= 0;
  bool get notMute => volume > 0;

  VideoState copyWith({
    VideoPlayerController? controller,
    bool? loaded,
    bool? controlsVisible,
    bool? playing,
    double? volume,
    double? volumeBeforeMute,
    String? errorMessage,
  }) {
    var controlsVisiblePrevious = this.controlsVisiblePrevious;
    if (controlsVisible != null) {
      controlsVisiblePrevious = !controlsVisible;
    }
    return VideoState(
      controller: controller ?? this.controller,
      loaded: loaded ?? this.loaded,
      controlsVisible: controlsVisible ?? this.controlsVisible,
      controlsVisiblePrevious: controlsVisiblePrevious,
      playing: playing ?? this.playing,
      volume: volume ?? this.volume,
      volumeBeforeMute: volumeBeforeMute ?? this.volumeBeforeMute,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  Future<void> dispose() async {
    controller.dispose();
  }

  @override
  List<Object> get props => [
        controller,
        loaded,
        controlsVisible,
        controlsVisiblePrevious,
        playing,
        volume,
        volumeBeforeMute,
        errorMessage,
      ];
}
