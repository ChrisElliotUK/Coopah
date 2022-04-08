import 'package:equatable/equatable.dart';

class Train extends Equatable {
  final String date;
  final String id;
  final String title;
  final String longDescription;
  final String shortDescription;
  final String time;
  final double distance;
  final DateTime pace;

  const Train({
    required this.date,
    required this.id,
    required this.title,
    required this.longDescription,
    required this.shortDescription,
    required this.time,
    required this.distance,
    required this.pace,
  });

  @override
  List<Object> get props => [
        date,
        id,
        title,
        longDescription,
        shortDescription,
        time,
        distance,
        pace,
      ];
}
