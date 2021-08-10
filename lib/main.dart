import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theming/main_page.dart';
import 'package:theming/theme.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) => MaterialApp(
        theme: watch(theme),
        darkTheme: watch(darkTheme),
        themeMode: watch(themeMode).state,
        home: MainPage(),
      ),
    );
  }
}
