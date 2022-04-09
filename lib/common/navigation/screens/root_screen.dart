import 'package:coopah/common/navigation/bloc/navigation_cubit/navigation_cubit.dart';
import 'package:coopah/common/navigation/widgets/bottom_nav_bar.dart';
import 'package:coopah/features/train/presentation/screens/training_root_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) => const BottomNavBar(),
      ),
      body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
        if (state.navigationItem == NavigationItem.rewards) {
          return const Center(
            child: Text('Rewards'),
          );
        } else if (state.navigationItem == NavigationItem.club) {
          return const Center(
            child: Text('Club'),
          );
        } else if (state.navigationItem == NavigationItem.profile) {
          return const Center(
            child: Text('Profile'),
          );
        } else {
          return const TrainingRootScreen();
        }
      }),
    );
  }
}
