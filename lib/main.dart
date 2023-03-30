// ignore_for_file: unused_import
// SOURCE : https://docs.fleaflet.dev/          NIET AANRAKEN
import 'package:flutter/material.dart';
import 'firebase_options.dart';

import 'pages/login/login.dart' as login_page;
import 'components/navigationbar.dart' as navigationbar_comp;
import 'pages/map/map.dart' as map_page;
import 'pages/my_settings/settings.dart' as settings_page;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool shownavigationBar = true;
    return MaterialApp(
      title: "parkflow",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const map_page.MapMain(),
              const login_page.LoginMain(),
              const settings_page.InstellingMain()
            ],
          ),
          bottomNavigationBar: shownavigationBar
              ? navigationbar_comp.NavigationBarMain(
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                )
              // ignore: dead_code
              : null //aanpassen
          ),
    );
  }
}
