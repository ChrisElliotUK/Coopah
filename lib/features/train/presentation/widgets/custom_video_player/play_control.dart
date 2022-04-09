part of 'custom_video_player.dart';

class PlayControl extends StatelessWidget {
  const PlayControl({
    Key? key,
    required this.iconSize,
  }) : super(key: key);

  final double iconSize;

  @override
  Widget build(
    BuildContext context,
  ) {
    return BlocBuilder<VideoBloc, VideoState>(
      buildWhen: (previous, current) {
        return previous.playing != current.playing;
      },
      builder: (_, state) {
        return GestureDetector(
          onTap: () => BlocProvider.of<VideoBloc>(context)..add(TogglePlay()),
          child: Icon(
            state.playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
            color: Colors.white,
            size: iconSize,
          ),
        );
      },
    );
  }
}
