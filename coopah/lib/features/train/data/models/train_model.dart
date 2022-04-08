import 'package:coopah/features/train/domain/entities/train.dart';

class TrainModel extends Train {
  const TrainModel({
    required String date,
    required String id,
    required String title,
    required String longDescription,
    required String shortDescription,
    required String time,
    required double distance,
    required DateTime pace,
  }) : super(
          date: date,
          id: id,
          title: title,
          longDescription: longDescription,
          shortDescription: shortDescription,
          time: time,
          distance: distance,
          pace: pace,
        );

  factory TrainModel.fromJson(Map<String, dynamic> json) => TrainModel(
      date: json['date'],
      id: json['id'],
      title: json['title'],
      longDescription: json['longDescription'],
      shortDescription: json['shortDescription'],
      time: json['time'],
      distance: json['distance'],
      pace: json['pace']);

  Map<String, dynamic> toJson() => {
        'date': date,
        'id': id,
        'title': title,
        'longDescription': longDescription,
        'shortDescription': shortDescription,
        'time': time,
        'distance': distance,
        'pace': pace,
      };
}
