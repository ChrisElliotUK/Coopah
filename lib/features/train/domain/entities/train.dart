import 'package:equatable/equatable.dart';

class Train extends Equatable {
  const Train({
    required this.date,
    required this.sessions,
  });

  final String date;
  final List<TrainSession> sessions;

  @override
  List<Object> get props => [
        date,
        sessions,
      ];
}

class TrainSession extends Equatable {
  const TrainSession(
      {required this.title,
      required this.sessionsTime,
      required this.sessionsDescription,
      this.session,
      this.sessionVideo});

  final String title;
  final String sessionsTime;
  final String sessionsDescription;
  final List<Session>? session;
  final String? sessionVideo;

  @override
  List<Object?> get props => [
        title,
        sessionsTime,
        session,
        sessionVideo,
      ];
}

class Session extends Equatable {
  const Session({
    this.sessionTitle,
    this.sessionTime,
    this.sessionDistance,
    this.sessionPace,
  });

  final String? sessionTitle;
  final String? sessionTime;
  final String? sessionDistance;
  final String? sessionPace;

  @override
  List<Object?> get props => [
        sessionTitle,
        sessionTime,
        sessionDistance,
        sessionPace,
      ];
}
