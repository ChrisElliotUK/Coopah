import 'package:coopah/features/train/domain/entities/train.dart';
import 'dart:convert';

List<TrainModel> trainingModelFromJson(String str) =>
    List<TrainModel>.from(json.decode(str).map((x) => TrainModel.fromJson(x)));

String trainingModelToJson(List<TrainModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TrainModel extends Train {
  const TrainModel({
    required this.date,
    required this.sessions,
  }) : super(date: date, sessions: sessions);

  final String date;
  final List<TrainModelSession> sessions;

  factory TrainModel.fromJson(Map<String, dynamic> json) => TrainModel(
        date: json["date"],
        sessions: List<TrainModelSession>.from(
            json["sessions"].map((x) => TrainModelSession.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "sessions": List<dynamic>.from(sessions.map((x) => x.toJson())),
      };
}

class TrainModelSession extends TrainSession {
  const TrainModelSession({
    required this.title,
    required this.sessionsTime,
    required this.session,
    required this.sessionsDescription,
  }) : super(
          title: title,
          sessionsTime: sessionsTime,
          session: session,
          sessionsDescription: sessionsDescription,
        );

  @override
  final String title;
  final String sessionsTime;
  final List<SessionModel> session;
  final String sessionsDescription;

  factory TrainModelSession.fromJson(Map<String, dynamic> json) =>
      TrainModelSession(
        title: json["title"],
        sessionsTime: json["sessionsTime"],
        session: List<SessionModel>.from(
            json["session"].map((x) => SessionModel.fromJson(x))),
        sessionsDescription: json["sessionsDescription"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "sessionsTime": sessionsTime,
        "session": List<dynamic>.from(session.map((x) => x.toJson())),
        "sessionsDescription": sessionsDescription,
      };
}

class SessionModel extends Session {
  const SessionModel({
    required this.sessionTitle,
    required this.sessionTime,
    required this.sessionDistance,
    required this.sessionPace,
  }) : super(
          sessionTitle: sessionTitle,
          sessionTime: sessionTime,
          sessionDistance: sessionDistance,
          sessionPace: sessionPace,
        );

  final String sessionTitle;
  final String sessionTime;
  final String sessionDistance;
  final String sessionPace;

  factory SessionModel.fromJson(Map<String, dynamic> json) => SessionModel(
        sessionTitle: json["sessionTitle"],
        sessionTime: json["sessionTime"],
        sessionDistance: json["sessionDistance"],
        sessionPace: json["sessionPace"],
      );

  Map<String, dynamic> toJson() => {
        "sessionTitle": sessionTitle,
        "sessionTime": sessionTime,
        "sessionDistance": sessionDistance,
        "sessionPace": sessionPace,
      };
}
