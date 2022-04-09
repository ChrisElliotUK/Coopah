import 'package:coopah/features/train/presentation/bloc/training_cubit/training_cubit.dart';
import 'package:coopah/features/train/presentation/widgets/training_list/session_item.dart';
import 'package:flutter/material.dart';

class TrainingListItem extends StatelessWidget {
  const TrainingListItem({Key? key, required this.state, required this.index})
      : super(key: key);

  final TrainingState state;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(state.trainingList[index].date,
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 8),
          Text(
            'Sessions',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.trainingList[index].sessions.length,
              itemBuilder: (context, sessionIndex) {
                return SessionItem(
                    trainingItem: state.trainingList[index],
                    sessionIndex: sessionIndex,
                    state: state);
              }),
        ],
      ),
    );
  }
}
