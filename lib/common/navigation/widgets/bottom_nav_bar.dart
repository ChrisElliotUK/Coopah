import 'package:coopah/common/navigation/bloc/navigation_cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Train',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined), label: 'Rewards'),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outline_outlined),
          label: 'Club',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Profile',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            BlocProvider.of<NavigationCubit>(context)
                .setNavigationItem(NavigationItem.train);
            break;
          case 1:
            BlocProvider.of<NavigationCubit>(context)
                .setNavigationItem(NavigationItem.rewards);
            break;
          case 2:
            BlocProvider.of<NavigationCubit>(context)
                .setNavigationItem(NavigationItem.club);
            break;
          case 3:
            BlocProvider.of<NavigationCubit>(context)
                .setNavigationItem(NavigationItem.profile);
            break;
        }
      },
    );
  }
}
