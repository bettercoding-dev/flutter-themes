import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// THEME PROVIDERS

// THEMES
// light
final _theme = ThemeData();

//dark
final _darkTheme = ThemeData();

// EXTENSIONS AND CLASSES
extension CustomTheme on ThemeData {}

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier(ThemeMode state) : super(state);

  void toggle() {}
}
