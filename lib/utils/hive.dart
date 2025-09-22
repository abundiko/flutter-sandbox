import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  static Box mainBox = Hive.box("main_box");

  static void setTheme(String newTheme) {
    LocalStorage.mainBox.put("theme_mode", newTheme);
  }

  static bool getIsDarkMode() {
    var savedTheme = LocalStorage.mainBox.get("theme_mode");
    if (savedTheme == null || savedTheme == "light") {
      return false;
    } else {
      return true;
    }
  }

  static void setThemeMode(ThemeMode newTheme) {
    String newThemeMode = "system";
    if (newTheme == ThemeMode.light) newThemeMode = "light";
    if (newTheme == ThemeMode.dark) newThemeMode = "dark";
    LocalStorage.mainBox.put("theme_mode_alt", newThemeMode);
  }

  static ThemeMode getThemeMode() {
    var savedTheme = LocalStorage.mainBox.get("theme_mode_alt");
    if (savedTheme == null || savedTheme == "system") {
      return ThemeMode.system;
    } else if (savedTheme == "light") {
      return ThemeMode.light;
    } else {
      return ThemeMode.dark;
    }
  }
}
