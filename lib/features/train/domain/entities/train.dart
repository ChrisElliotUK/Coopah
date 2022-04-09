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
  const TrainSession({
    required this.title,
    required this.sessionsTime,
    required this.session,
    required this.sessionsDescription,
  });

  final String title;
  final String sessionsTime;
  final String sessionsDescription;
  final List<Session> session;

  @override
  List<Object> get props => [
        title,
        sessionsTime,
        session,
      ];
}

class Session extends Equatable {
  const Session({
    required this.sessionTitle,
    required this.sessionTime,
    required this.sessionDistance,
    required this.sessionPace,
  });

  final String sessionTitle;
  final String sessionTime;
  final String sessionDistance;
  final String sessionPace;

  @override
  List<Object> get props => [
        sessionTitle,
        sessionTime,
        sessionDistance,
        sessionPace,
      ];
}
