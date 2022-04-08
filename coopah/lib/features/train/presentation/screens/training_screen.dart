import 'package:coopah/features/train/data/repository/train_repository_impl.dart';
import 'package:coopah/features/train/domain/repositories/train_repository.dart';
import 'package:coopah/features/train/presentation/bloc/training_cubit/training_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Training'),
      ),
      body: RepositoryProvider(
        create: (context) => TrainRepositoryImpl(),
        child: BlocProvider(
            create: (context) =>
                TrainingCubit(repository: context.read<TrainRepositoryImpl>()),
            child: const TrainingPageItems()),
      ),
    );
  }
}

class TrainingPageItems extends StatelessWidget {
  const TrainingPageItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingCubit, TrainingState>(
      builder: (context, state) {
        if (state.status == TrainingStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status == TrainingStatus.error) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return ListView.builder(
            itemCount: state.trainingList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.trainingList[index].title),
              );
            },
          );
        }
      },
    );
  }
}
