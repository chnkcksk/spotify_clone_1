// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/controller/controller.dart';
import 'package:spotify_clone/screens/home_screen.dart';
import 'package:spotify_clone/screens/library_screen.dart';
import 'package:spotify_clone/screens/premium_screen.dart';
import 'package:spotify_clone/screens/search_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(
      builder: ((context) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              HomeScreen(),
              SearchScreen(),
              LibraryScreen(),
              //PremiumScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[600],
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: [
              _bottomBarItem(Icons.home, "Ana Sayfa"),
              _bottomBarItem(Icons.search, "Arama"),
              _bottomBarItem(Icons.library_books, "Kitaplığın"),
              //_bottomBarItem(Icons.settings, "Settings"),
            ],
          ),
        );
      }),
    );
  }
}

_bottomBarItem(IconData icon, String label) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}
