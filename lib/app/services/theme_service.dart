import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeService {
  final _key = 'isDarkMode';

  bool _loadThemeFromStorage() => Get.isDarkMode;

  void _saveThemeToStorage(bool isDarkMode) =>
      Get.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);

  ThemeMode get theme =>
      _loadThemeFromStorage() ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToStorage(!Get.isDarkMode);
  }
}
