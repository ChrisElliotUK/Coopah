import 'package:bloc/bloc.dart';
import 'package:coopah/features/train/domain/entities/train.dart';
import 'package:coopah/features/train/domain/repositories/train_repository.dart';
import 'package:equatable/equatable.dart';

part 'training_state.dart';

class TrainingCubit extends Cubit<TrainingState> {
  TrainingCubit({
    required TrainRepository repository,
  })  : _repository = repository,
        super(const TrainingState());

  final TrainRepository _repository;

  /// Get the list of training items for the training screen.
  Future<void> getTrainingItems() async {
    emit(state.copyWith(status: TrainingStatus.loading));
    try {
      final List<Train> trainList = await _repository.getTraining();

      /// If the training items are successfully retrieved, emit the success state.
      emit(state.copyWith(
        status: TrainingStatus.succcess,
        trainingList: trainList,
      ));
    } catch (e) {
      /// If the training items are not successfully retrieved, emit the error state.
      /// The error message is the exception message.
      /// The error message will be shown as a snackbar in the training screen.
      emit(state.copyWith(
        status: TrainingStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}
