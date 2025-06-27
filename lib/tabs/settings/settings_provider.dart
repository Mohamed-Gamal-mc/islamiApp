import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDark => themeMode == ThemeMode.dark;
  String get backGroundImagePath =>
      'assets/images/${isDark ? 'home_dark_background' : 'home_screen_background'}.png';
  void changeThemeMode(ThemeMode selectedThemeMode) {
    themeMode = selectedThemeMode;
    notifyListeners();
  }
}
