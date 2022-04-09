import 'package:coopah/features/train/domain/entities/train.dart';

abstract class TrainRepository {
  Future<List<Train>> getTraining();
}
