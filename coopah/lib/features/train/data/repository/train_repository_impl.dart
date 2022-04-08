import 'package:coopah/features/train/data/data_sources/remote_data_source.dart';
import 'package:coopah/features/train/domain/entities/train.dart';
import 'package:coopah/features/train/domain/repositories/train_repository.dart';

class TrainRepositoryImpl implements TrainRepository {
  /// Get the list of training items for the training screen.
  @override
  Future<List<Train>> getTraining() =>
      TrainRemoteDataSourceImpl().getTraining();
}
