import 'package:coopah/features/train/data/models/train_model.dart';
import 'package:coopah/features/train/domain/entities/train.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

abstract class TrainRemoteDataSource {
  Future<List<Train>> getTraining();
}

class TrainRemoteDataSourceImpl implements TrainRemoteDataSource {
  @override
  Future<List<Train>> getTraining() async {
    /// This is where the data is retrieved from the remote server.
    /// However, in this case, we are just returning a dummy list of trains.
    /// The dummy list is in assets/data/dummy_data_training.json

    final String response =
        await rootBundle.loadString('assets/data/dummy_data_training.json');
    try {
      final List<Train> result = trainingModelFromJson(response);
      if (kDebugMode) {
        print(result);
      }
      return result;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      rethrow;
    }
  }
}
