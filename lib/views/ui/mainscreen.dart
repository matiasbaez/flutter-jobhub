
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/drawer/drawer_screen.dart';
import 'package:jobhub/views/ui/homepage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: DrawerScreen(
        indexSetter: (index) {
          // TODO: update the current index
        }
      ),
      mainScreen: currentScreen(),
      borderRadius: 30,
      showShadow: true,
      angle: 0.0,
      slideWidth: 250,
      menuBackgroundColor: Color(kDarkBlue.value),
    );
  }

  Widget currentScreen() {
    // TODO: Implement a state to manage the current index
    const currentIndex = 1;
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 2:
        return const HomePage();
      case 3:
        return const HomePage();
      case 4:
        return const HomePage();
      default:
        return const HomePage();
    }
  }

}