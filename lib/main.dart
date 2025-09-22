import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sandbox/screens/pageview_screen.dart';
import 'package:sandbox/state/settings_state.dart';
import 'package:sandbox/utils/theme.dart';
import 'package:toastification/toastification.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("main_box");
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeMode activeTheme = ref.watch(SettingsState.isDarkMode)
        ? ThemeMode.dark
        : ThemeMode.light;

    return ToastificationWrapper(
      child: MaterialApp(
        title: 'Sandbox',
        home: PageViewScreen(),
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ref.watch(SettingsState.themeMode),
      ),
    );
  }
}
