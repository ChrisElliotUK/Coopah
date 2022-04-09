part of 'training_cubit.dart';

enum TrainingStatus {
  initial,
  loading,
  succcess,
  error,
}

class TrainingState extends Equatable {
  const TrainingState(
      {this.trainingList = const [],
      this.status = TrainingStatus.initial,
      this.errorMessage = ''});

  final String errorMessage;
  final List<Train> trainingList;
  final TrainingStatus status;

  TrainingState copyWith({
    TrainingStatus? status,
    List<Train>? trainingList,
    String? errorMessage,
  }) {
    return TrainingState(
      status: status ?? this.status,
      trainingList: trainingList ?? this.trainingList,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [
        status,
        trainingList,
        errorMessage,
      ];
}
