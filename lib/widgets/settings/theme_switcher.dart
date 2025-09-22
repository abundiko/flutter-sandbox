import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sandbox/state/settings_state.dart';
import 'package:sandbox/utils/hive.dart';

class ThemeSwitcher extends ConsumerStatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends ConsumerState<ThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    ref.listen(SettingsState.isDarkMode, (prev, next) {
      LocalStorage.setTheme(next ? "dark" : "light");
    });
    ref.listen(SettingsState.themeMode, (prev, next) {
      print("from $prev to $next");
    });

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Switch(
            value: ref.watch(SettingsState.isDarkMode),
            onChanged: (newValue) {
              ref.read(SettingsState.isDarkMode.notifier).state = newValue;
            },
          ),

          SizedBox(height: 40),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black.withAlpha(10), width: 2),
            ),
            child: DropdownMenu(
              initialSelection:
                  ref.watch(SettingsState.themeMode) == ThemeMode.dark
                  ? "dark"
                  : ref.watch(SettingsState.themeMode) == ThemeMode.light
                  ? "light"
                  : "system",
              onSelected: (value) {
                if (value == "dark") {
                  ref.read(SettingsState.themeMode.notifier).state =
                      ThemeMode.dark;
                } else if (value == "light") {
                  ref.read(SettingsState.themeMode.notifier).state =
                      ThemeMode.light;
                } else {
                  ref.read(SettingsState.themeMode.notifier).state =
                      ThemeMode.system;
                }
                LocalStorage.setThemeMode(ref.read(SettingsState.themeMode));
              },

              menuStyle: MenuStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.red, width: 2),
                  ),
                ),
              ),
              textStyle: TextStyle(color: Colors.white),
              inputDecorationTheme: InputDecorationTheme(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
              dropdownMenuEntries: [
                DropdownMenuEntry(label: "Light", value: "light"),
                DropdownMenuEntry(label: "Dark", value: "dark"),
                DropdownMenuEntry(label: "System", value: "system"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
