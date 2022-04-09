import 'package:coopah/features/train/presentation/bloc/training_cubit/training_cubit.dart';
import 'package:coopah/features/train/presentation/widgets/training_list/training_list_item.dart';
import 'package:flutter/material.dart';

class TrainingList extends StatelessWidget {
  const TrainingList({Key? key, required this.state}) : super(key: key);

  final TrainingState state;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: state.trainingList.length,
      itemBuilder: (context, index) {
        return TrainingListItem(state: state, index: index);
      },
    );
  }
}
