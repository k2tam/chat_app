import 'package:chat_app/screens/screen_layout.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: const Color.fromRGBO(59, 130, 247, 1),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromRGBO(59, 130, 247, 1),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat App',
      // darkTheme: ThemeData.dark().copyWith(
      //   useMaterial3: true,
      //   colorScheme: kDarkColorScheme,
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: kDarkColorScheme.primaryContainer,
      //       foregroundColor: kDarkColorScheme.onPrimaryContainer,
      //     ),
      //   ),
      //   textTheme: ThemeData().textTheme.copyWith(
      //         titleLarge: TextStyle(
      //           fontWeight: FontWeight.normal,
      //           color: kDarkColorScheme.onSecondaryContainer,
      //           fontSize: 21,
      //         ),
      //         titleMedium: TextStyle(
      //           color: kDarkColorScheme.onPrimary,
      //         ),
      //       ),
      // ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          foregroundColor: kColorScheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
            foregroundColor: kColorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: kColorScheme.primary,
                fontSize: 21,
              ),
              titleMedium: TextStyle(
                color: kColorScheme.onSurface,
              ),
              bodyMedium: TextStyle(
                color: kColorScheme.onBackground,
              ),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const ScreenLayout(),
    );
  }
}
