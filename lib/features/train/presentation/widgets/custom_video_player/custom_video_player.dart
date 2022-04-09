import 'package:coopah/features/train/presentation/bloc/video_bloc/video_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

part 'play_control.dart';
part 'video_controls.dart';
part 'audio_control.dart';
part 'progress_indicator_control.dart';

class CustomVideoPlayer extends StatelessWidget {
  const CustomVideoPlayer({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoBloc, VideoState>(
      builder: (context, state) {
        return AspectRatio(
          aspectRatio: 1.78,
          key: ValueKey(state.loaded),
          child: state.notLoaded
              ? Center(child: CircularProgressIndicator())
              : _VideoPlayer(state: state),
        );
      },
    );
  }
}

class _VideoPlayer extends StatelessWidget {
  const _VideoPlayer({Key? key, required this.state}) : super(key: key);
  final VideoState state;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        VideoPlayer(state.controller),
        VideoControls(state.controller),
      ],
    );
  }
}
