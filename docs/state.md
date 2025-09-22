# State Management

global in-app state with `flutter_riverpod`
and local-first state with `hive_flutter`

## RiverPod

riverpod is a state manement solution that deals with state providers (variables holding state) and state consumers (widgets using state)

- wrap your app with `runApp(ProviderScope(child: const MyApp()));`

- create a class for related state values:

```dart
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
```

- use the states in a `ConsumerWidget` provided by riverpod:

```dart
ref.watch(SettingsState.isDarkMode) // updates whenever the state value changes
ref.read(SettingsState.isDarkMode) // updates at the initial render
ref.listen(SettingsState.isDarkMode) // accepts a callback fn that provides the previous and current values

```

- settings state:

```dart
ref.read(SettingsState.isDarkMode.notifier).state = <new_value>
```

## Hive

hive is a local-first key-value store that deals with boxes (every storage is a box)

- initialize hive and open the box, before running the app:

```dart
void main() async {
  await Hive.initFlutter();
  await Hive.openBox("main_box");
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: const MyApp()));
}
```

- create a box: `static Box mainBox = Hive.box("main_box");`

- set values to the box: `mainBox.put("key", "value");`

- get values from the box: `mainBox.get("key")`
