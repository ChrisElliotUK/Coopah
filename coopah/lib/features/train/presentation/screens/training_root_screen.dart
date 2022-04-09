import 'package:coopah/features/train/data/repository/train_repository_impl.dart';
import 'package:coopah/features/train/presentation/bloc/training_cubit/training_cubit.dart';
import 'package:coopah/features/train/presentation/screens/training_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrainingRootScreen extends StatefulWidget with PreferredSizeWidget {
  const TrainingRootScreen({Key? key}) : super(key: key);

  @override
  _TrainingScreenState createState() => _TrainingScreenState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _TrainingScreenState extends State<TrainingRootScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Training'),
            Tab(text: 'My plan'),
            Tab(text: 'Progress'),
          ],
        ),
      ),
      body: RepositoryProvider(
        create: (context) => TrainRepositoryImpl(),
        child: BlocProvider(
            create: (context) =>
                TrainingCubit(repository: context.read<TrainRepositoryImpl>())
                  ..getTrainingItems(),
            child: TabBarView(
              controller: _tabController,
              children: const <Widget>[
                TrainingScreen(),
                Center(
                  child: Text('My Plan'),
                ),
                Center(
                  child: Text('Progress'),
                ),
              ],
            )),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
