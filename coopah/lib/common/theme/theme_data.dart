import 'package:coopah/common/theme/color_scheme.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: lightColorScheme,
  appBarTheme: AppBarTheme(
    color: lightColorScheme.surface,
    foregroundColor: lightColorScheme.onSurface,
  ),
  tabBarTheme: TabBarTheme(
    labelColor: lightColorScheme.onSurface,
    unselectedLabelColor: lightColorScheme.onSurfaceVariant,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: lightColorScheme.primary,
        width: 2,
      ),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: lightColorScheme.surface,
    selectedItemColor: lightColorScheme.primary,
    unselectedItemColor: lightColorScheme.onSurface,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    elevation: 0,
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: lightColorScheme.primary,
          width: 2,
        ),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      minimumSize: MaterialStateProperty.all<Size>(
        const Size(266, 48),
      ),
    ),
  ),
  cardTheme: CardTheme(
    color: lightColorScheme.primaryContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    elevation: 0,
    margin: const EdgeInsets.all(8),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 57,
        height: 1.12,
        letterSpacing: 0,
        color: lightColorScheme.onBackground),
    displayMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 45,
        height: 1.16,
        letterSpacing: 0,
        color: lightColorScheme.onBackground),
    displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 36,
        height: 1.22,
        letterSpacing: 0,
        color: lightColorScheme.onBackground),
    headlineLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 32,
        height: 1.25,
        letterSpacing: 0,
        color: lightColorScheme.onBackground),
    headlineMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 28,
        height: 1.29,
        letterSpacing: 0,
        color: lightColorScheme.onBackground),
    headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        height: 1.33,
        letterSpacing: 0,
        color: lightColorScheme.onBackground),
    titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 22,
        height: 1.27,
        letterSpacing: 0,
        color: lightColorScheme.onBackground),
    titleMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0.15,
        color: lightColorScheme.onBackground),
    titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 1.43,
        letterSpacing: 0.1,
        color: lightColorScheme.onBackground),
    labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 1.43,
        letterSpacing: 0.1,
        color: lightColorScheme.onBackground),
    labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 1.33,
        letterSpacing: 0.5,
        color: lightColorScheme.onBackground),
    labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        height: 1.45,
        letterSpacing: 0.5,
        color: lightColorScheme.onBackground),
    bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0.15,
        color: lightColorScheme.onBackground),
    bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.43,
        letterSpacing: 0.25,
        color: lightColorScheme.onBackground),
    bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.33,
        letterSpacing: 0.4,
        color: lightColorScheme.onBackground),
  ),
  fontFamily: 'Poppins',
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: darkColorScheme,
  appBarTheme: AppBarTheme(
    color: darkColorScheme.surface,
    foregroundColor: darkColorScheme.onSurface,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: darkColorScheme.surface,
    selectedItemColor: darkColorScheme.primary,
    unselectedItemColor: darkColorScheme.onSurface,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    elevation: 0,
  ),
  tabBarTheme: TabBarTheme(
    labelColor: darkColorScheme.onSurface,
    unselectedLabelColor: darkColorScheme.onSurfaceVariant,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: darkColorScheme.primary,
        width: 2,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: darkColorScheme.primary,
          width: 2,
        ),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      minimumSize: MaterialStateProperty.all<Size>(
        const Size(266, 48),
      ),
    ),
  ),
  cardTheme: CardTheme(
    color: darkColorScheme.primaryContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    elevation: 0,
    margin: const EdgeInsets.all(8),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 57,
        height: 1.12,
        letterSpacing: 0,
        color: darkColorScheme.onBackground),
    displayMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 45,
        height: 1.16,
        letterSpacing: 0,
        color: darkColorScheme.onBackground),
    displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 36,
        height: 1.22,
        letterSpacing: 0,
        color: darkColorScheme.onBackground),
    headlineLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 32,
        height: 1.25,
        letterSpacing: 0,
        color: darkColorScheme.onBackground),
    headlineMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 28,
        height: 1.29,
        letterSpacing: 0,
        color: darkColorScheme.onBackground),
    headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        height: 1.33,
        letterSpacing: 0,
        color: darkColorScheme.onBackground),
    titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 22,
        height: 1.27,
        letterSpacing: 0,
        color: darkColorScheme.onBackground),
    titleMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0.15,
        color: darkColorScheme.onBackground),
    titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 1.43,
        letterSpacing: 0.1,
        color: darkColorScheme.onBackground),
    labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 1.43,
        letterSpacing: 0.1,
        color: darkColorScheme.onBackground),
    labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 1.33,
        letterSpacing: 0.5,
        color: darkColorScheme.onBackground),
    labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        height: 1.45,
        letterSpacing: 0.5,
        color: darkColorScheme.onBackground),
    bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0.15,
        color: darkColorScheme.onBackground),
    bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.43,
        letterSpacing: 0.25,
        color: darkColorScheme.onBackground),
    bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.33,
        letterSpacing: 0.4,
        color: darkColorScheme.onBackground),
  ),
  fontFamily: 'Poppins',
);
