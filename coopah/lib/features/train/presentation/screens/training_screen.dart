import 'package:coopah/features/train/data/repository/train_repository_impl.dart';
import 'package:coopah/features/train/presentation/bloc/training_cubit/training_cubit.dart';
import 'package:coopah/features/train/presentation/widgets/info_box/info_box.dart';
import 'package:coopah/features/train/presentation/widgets/training_list/training_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrainingCubit, TrainingState>(
      listener: (context, state) {
        if (state.status == TrainingStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.status == TrainingStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const InfoBox(
                  bodyText:
                      'Set a target, get daily running and strength and condition workouts, see your statistics with a personal plan.',
                  buttonText: 'Get personalised plan',
                  iconData: Icons.arrow_forward,
                ),
                TrainingList(state: state),
              ],
            ),
          );
        }
      },
    );
  }
}
