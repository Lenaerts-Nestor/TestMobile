import 'package:flutter/material.dart';
import 'package:parkflow_project/pages/map_section/map_body.dart';
import '../../components/navigationbar.dart' as navigationbar_comp;

class MapMain extends StatelessWidget {
  const MapMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MapBody(),
      bottomNavigationBar: navigationbar_comp.NavigationBarMain(
        currentIndex: 0,
        onTap: (index) {
          if (index != 0) {
            Navigator.pushNamed(context, index == 1 ? '/settings' : '/');
          }
        },
      ),
    );
  }
}
