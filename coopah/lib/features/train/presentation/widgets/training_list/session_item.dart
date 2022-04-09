import 'package:coopah/features/train/domain/entities/train.dart';
import 'package:coopah/features/train/presentation/bloc/training_cubit/training_cubit.dart';
import 'package:coopah/features/train/presentation/widgets/training_list/table_column.dart';
import 'package:flutter/material.dart';

class SessionItem extends StatelessWidget {
  const SessionItem({
    Key? key,
    required this.state,
    required this.sessionIndex,
    required this.trainingItem,
  }) : super(key: key);
  final TrainingState state;
  final int sessionIndex;
  final Train trainingItem;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(trainingItem.sessions[sessionIndex].title),
      subtitle:
          Text('Time: ${trainingItem.sessions[sessionIndex].sessionsTime}'),
      children: <Widget>[
        Row(
          children: <Widget>[
            const Icon(Icons.calendar_today),
            TextButton(
              onPressed: () {},
              child: const Text("Change session's date"),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(trainingItem.sessions[sessionIndex].sessionsDescription),
        const SizedBox(height: 8),
        Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.primaryContainer,
            child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Center(
                  child: Text('Your goal numbers'),
                ))),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableColumn(
              itemCount: trainingItem.sessions[sessionIndex].session.length,
              columnName: 'Description',
              itemBuilder: (context, newIndex) => Text(trainingItem
                  .sessions[sessionIndex].session[newIndex].sessionTitle),
            ),
            TableColumn(
              itemCount: trainingItem.sessions[sessionIndex].session.length,
              columnName: 'Time',
              itemBuilder: (context, newIndex) => Text(trainingItem
                  .sessions[sessionIndex].session[newIndex].sessionTime),
            ),
            TableColumn(
              itemCount: trainingItem.sessions[sessionIndex].session.length,
              columnName: 'Distance',
              itemBuilder: (context, newIndex) => Text(trainingItem
                  .sessions[sessionIndex].session[newIndex].sessionDistance),
            ),
            TableColumn(
              itemCount: trainingItem.sessions[sessionIndex].session.length,
              columnName: 'Pace',
              subtitle: '(min/km)',
              itemBuilder: (context, newIndex) => Text(trainingItem
                  .sessions[sessionIndex].session[newIndex].sessionPace),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () {}, child: const Text('Add details and finish')),
        )
      ],
    );
  }
}
