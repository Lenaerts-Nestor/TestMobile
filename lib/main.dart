import 'package:flutter/material.dart';

import 'pages/map_section/map_main.dart' as map_page;
import 'pages/settings_section/settings_main.dart' as settings_page;
import 'pages/login_section/login.dart' as login_page;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "parkflow",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const login_page.LoginMain(),
        '/map': (context) => const map_page.MapMain(),
        '/settings': (context) => const settings_page.SettingsMain(),
      },
    );
  }
}
