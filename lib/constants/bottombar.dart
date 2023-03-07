// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:front_esignco/constants/constants.dart';

class BottomBar extends StatefulWidget {
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      fixedColor: purple,
      iconSize: 24,
      onTap: _onItemTapped,
      unselectedItemColor: black,
      currentIndex: _selectedIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'خانه',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.border_color_outlined),
          label: 'ایزاین',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt_outlined),
          label: 'AR',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: 'فروشگاه',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'جستجو',
        ),
      ],
    );
  }
}
