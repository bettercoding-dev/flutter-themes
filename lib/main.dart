import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theming/global_providers.dart';
import 'package:theming/main_page.dart';
import 'package:theming/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initGlobalProviders();
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) => MaterialApp(
        theme: watch(theme),
        darkTheme: watch(darkTheme),
        themeMode: watch(themeMode),
        home: MainPage(),
      ),
    );
  }
}
