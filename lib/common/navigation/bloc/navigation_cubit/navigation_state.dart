part of 'navigation_cubit.dart';

enum NavigationItem {
  train,
  rewards,
  club,
  profile,
}

class NavigationState extends Equatable {
  const NavigationState(
      {this.navigationItem = NavigationItem.train, this.index = 0});

  final NavigationItem navigationItem;
  final int index;

  @override
  List<Object> get props => [
        navigationItem,
        index,
      ];
}
