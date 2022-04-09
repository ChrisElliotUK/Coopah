import 'package:flutter/material.dart';

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
