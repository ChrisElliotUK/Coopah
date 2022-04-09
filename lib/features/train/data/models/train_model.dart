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
    this.session,
    required this.sessionsDescription,
    this.sessionVideo,
  }) : super(
            title: title,
            sessionsTime: sessionsTime,
            session: session,
            sessionsDescription: sessionsDescription,
            sessionVideo: sessionVideo);

  @override
  final String title;
  final String sessionsTime;
  final List<SessionModel>? session;
  final String sessionsDescription;
  final String? sessionVideo;

  factory TrainModelSession.fromJson(Map<String, dynamic> json) =>
      TrainModelSession(
        title: json["title"],
        sessionsTime: json["sessionsTime"],
        session: json["session"] == null
            ? null
            : List<SessionModel>.from(
                json["session"].map((x) => SessionModel.fromJson(x))),
        sessionsDescription: json["sessionsDescription"],
        sessionVideo:
            json["sessionVideo"] == null ? null : json["sessionVideo"],
      );

  Map<String?, dynamic> toJson() => {
        "title": title,
        "sessionsTime": sessionsTime,
        "session": List<dynamic>.from(session!.map((x) => x.toJson())),
        "sessionVideo": sessionVideo,
        "sessionsDescription": sessionsDescription,
      };
}

class SessionModel extends Session {
  const SessionModel({
    this.sessionTitle,
    this.sessionTime,
    this.sessionDistance,
    this.sessionPace,
  }) : super(
          sessionTitle: sessionTitle,
          sessionTime: sessionTime,
          sessionDistance: sessionDistance,
          sessionPace: sessionPace,
        );

  final String? sessionTitle;
  final String? sessionTime;
  final String? sessionDistance;
  final String? sessionPace;

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
