// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:front_esignco/constants/colors.dart';
import 'package:front_esignco/screens/login/profile.dart';

import '../screens/bottombar_page/ar.dart';
import '../screens/bottombar_page/esign.dart';
import '../screens/bottombar_page/homepage.dart';
import '../screens/bottombar_page/search.dart';
import '../screens/bottombar_page/shop.dart';
import 'appbar.dart';

class BottomBar extends StatefulWidget {
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late final List<Widget> pageList = [
    const HomePage(),
    const EsignPage(),
    const ArShowPage(),
    const ShopPage(),
    const SearchPage(),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
        child: Appbar(
          currentRoute: HomePage(),
          height: 56,
          bottomLeftCir: 16,
          bottomRightCir: 16,
        ),
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      body: pageList.elementAt(_selectedIndex),
    );
  }
}





/*
backgroundColor: background,
      appBar: PreferredSize(
        child: Appbar(
          currentRoute: HomePage(),
          height: 56,
          bottomLeftCir: 16,
          bottomRightCir: 16,
        ),
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
      ),
      */