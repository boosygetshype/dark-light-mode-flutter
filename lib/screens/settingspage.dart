import 'package:flutter/material.dart';
import 'package:myapp_1/providers/providers.dart';
import 'package:provider/provider.dart';

class MySettingsPage extends StatefulWidget {
  const MySettingsPage({super.key});

  @override
  State<MySettingsPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "AYARLAR",
          style: TextStyle(
            letterSpacing: 10,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => _themeChanger.setTheme(
                    ThemeData.dark(),
                  ),
                  icon: const Icon(
                    Icons.dark_mode_outlined,
                    size: 50,
                  ),
                ),
                IconButton(
                  onPressed: () => _themeChanger.setTheme(
                    ThemeData.light(),
                  ),
                  icon: const Icon(
                    Icons.light_mode_outlined,
                    size: 50,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
