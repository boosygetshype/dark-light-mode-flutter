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
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).secondaryHeaderColor
                ],
                stops: const [0, 1.0],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                const Text(
                  "Dark Mode",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                // const SizedBox(
                //   width: 75,
                // ),
                IconButton(
                  onPressed: () => _themeChanger.setTheme(
                    ThemeData.light(),
                  ),
                  icon: const Icon(
                    Icons.light_mode_outlined,
                    size: 50,
                  ),
                ),
                const Text(
                  "Light Mode",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
