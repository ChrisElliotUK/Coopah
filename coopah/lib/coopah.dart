import 'package:coopah/common/navigation/bloc/navigation_cubit/navigation_cubit.dart';
import 'package:coopah/common/navigation/screens/root_screen.dart';
import 'package:coopah/common/theme/brightness_cubit/brightness_cubit.dart';
import 'package:coopah/common/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Coopah extends StatelessWidget {
  const Coopah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<BrightnessCubit>(
        create: (context) => BrightnessCubit(),
      ),
      BlocProvider<NavigationCubit>(
        create: (context) => NavigationCubit(),
      ),
    ], child: const App());
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrightnessCubit, BrightnessState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Coopah',

          /// If the user has not set a preference for the app to be dark or light,
          /// then the app will default to system. We will check the cache in the init
          /// state to see if the user has set a preference.
          /// TODO: implement cached brightness mode.
          theme: state.brightnessState == BrightnessStatus.dark
              ? darkTheme
              : lightTheme,
          darkTheme: state.brightnessState == BrightnessStatus.light
              ? lightTheme
              : darkTheme,
          home: const RootScreen(),
        );
      },
    );
  }
}
