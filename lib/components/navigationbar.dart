import 'package:flutter/material.dart';

class NavigationBarMain extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const NavigationBarMain({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ), 
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorieten',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Spots',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Instellingen',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.red,
        onTap: onTap,
        unselectedIconTheme: const IconThemeData(color: Colors.grey));
  }
}
