part of 'navigation_cubit.dart';

enum NavigationItem {
  train,
  rewards,
  club,
  profile,
}

class NavigationState extends Equatable {
  const NavigationState({this.navigationItem = NavigationItem.train});

  final NavigationItem navigationItem;

  @override
  List<Object> get props => [
        navigationItem,
      ];
}
