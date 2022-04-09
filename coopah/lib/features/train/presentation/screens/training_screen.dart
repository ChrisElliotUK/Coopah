import 'package:coopah/features/train/data/repository/train_repository_impl.dart';
import 'package:coopah/features/train/presentation/bloc/training_cubit/training_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const TrainingScreenTabs(),
      ),
      body: RepositoryProvider(
        create: (context) => TrainRepositoryImpl(),
        child: BlocProvider(
            create: (context) =>
                TrainingCubit(repository: context.read<TrainRepositoryImpl>())
                  ..getTrainingItems(),
            child: const TrainingPageItems()),
      ),
    );
  }
}

class TrainingPageItems extends StatelessWidget {
  const TrainingPageItems({Key? key}) : super(key: key);

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
          return Column(
            children: [
              const InfoBox(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: state.trainingList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.trainingList[index].title),
                  );
                },
              ),
            ],
          );
        }
      },
    );
  }
}

class TrainingScreenTabs extends StatefulWidget with PreferredSizeWidget {
  const TrainingScreenTabs({Key? key}) : super(key: key);

  @override
  _TrainingScreenTabsState createState() => _TrainingScreenTabsState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _TrainingScreenTabsState extends State<TrainingScreenTabs>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      tabs: const <Widget>[
        Tab(text: 'Training'),
        Tab(text: 'My plan'),
        Tab(text: 'Progress'),
      ],
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Card(
        child: Container(
          height: MediaQuery.of(context).size.height / 5,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Set a target, get daily running and strength and condition workouts, see your statistics with a personal plan.',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get personalised plan',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
