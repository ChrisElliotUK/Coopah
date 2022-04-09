import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState());

  void setNavigationItem(NavigationItem navigationItem, int index) =>
      emit(NavigationState(navigationItem: navigationItem, index: index));
}
