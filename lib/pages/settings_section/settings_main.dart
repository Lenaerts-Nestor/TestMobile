import 'package:flutter/material.dart';
import 'package:parkflow_project/pages/settings_section/settings_body.dart';
import '../../components/navigationbar.dart' as navigationbar_comp;

class SettingsMain extends StatelessWidget {
  const SettingsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SettingsBody(),
      bottomNavigationBar: navigationbar_comp.NavigationBarMain(
        currentIndex: 1,
        onTap: (index) {
          if (index != 1) {
            Navigator.pushNamed(context, index == 0 ? '/map' : '/');
          }
        },
      ),
    );
  }
}
