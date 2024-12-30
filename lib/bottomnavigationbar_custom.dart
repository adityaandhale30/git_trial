import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'Views/analytics/analytics_screen.dart';
import 'Views/homescreen/home_screen.dart';


class BottomnavigationbarCustom extends StatelessWidget {
  const BottomnavigationbarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(20),
          colorBehindNavBar: Colors.white),
      context,
      navBarHeight: 70,
      navBarStyle: NavBarStyle.style15,
      screens: [
        const HomeScreen(),
        const AnalyticsScreen(),
        Container(),
        Container(),
        Container(),
        
      ],
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.home_outlined,
            size: 36,
          ),
          inactiveIcon: const Icon(
            Icons.home_outlined,
          ),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.analytics_outlined,
            size: 36,
          ),
          inactiveIcon: const Icon(Icons.analytics_outlined),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.search_rounded,
            color: Colors.black,
          ),
          inactiveIcon: const Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
        ),
        PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.school_outlined,
              size: 36,
            ),
            inactiveIcon: const Icon(Icons.school_outlined)),
        PersistentBottomNavBarItem(
          inactiveIcon: const CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage(
              "assets/harli.jpg",
            ),
          ),
          icon: Container(
            clipBehavior: Clip.antiAlias,
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              //color: Colors.green,
            ),
            child: Image.asset(
              "assets/harli.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
