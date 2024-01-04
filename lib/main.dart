import 'package:flutter/material.dart';
import 'package:myapp_1/providers/providers.dart';
import 'package:myapp_1/screens/homepage.dart';
import 'package:myapp_1/screens/settingspage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (context) => ThemeChanger(ThemeData.dark()),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      home: const MyHomePage(),
      theme: theme.getTheme(),
      routes: {
        '/homepage': (context) => const MyHomePage(),
        '/settingspage': (context) => const MySettingsPage()
      },
    );
  }
}
