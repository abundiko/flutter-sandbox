import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:sandbox/utils/hive.dart';

class SettingsState {
  static final isDarkMode = StateProvider<bool>((_) {
    var savedTheme = LocalStorage.getIsDarkMode();
    return savedTheme;
  });

  static final themeMode = StateProvider<ThemeMode>((_) {
    var savedTheme = LocalStorage.getThemeMode();
    return savedTheme;
  });
}
