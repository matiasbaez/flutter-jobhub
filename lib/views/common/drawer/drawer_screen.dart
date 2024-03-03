
import 'package:flutter/material.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/drawer/widgets/drawer_item.dart';

class DrawerScreen extends StatefulWidget {

  final ValueSetter indexSetter;

  const DrawerScreen({ super.key, required this.indexSetter });

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ZoomDrawer.of(context)!.toggle(),
      child: Scaffold(
        backgroundColor: Color(kDarkBlue.value),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            DrawerItem(
              icon: Fontisto.home,
              color: Color(kLight.value),
              index: 0,
              text: "Home",
            ),

            DrawerItem(
              icon: Fontisto.messenger,
              color: Color(kLightGrey.value),
              index: 1,
              text: "Chat",
            ),

            DrawerItem(
              icon: Fontisto.bookmark,
              color: Color(kLightGrey.value),
              index: 2,
              text: "Bookmarks",
            ),

            DrawerItem(
              icon: MaterialCommunityIcons.devices,
              color: Color(kLightGrey.value),
              index: 3,
              text: "Device Mgmnt",
            ),

            DrawerItem(
              icon: FontAwesome5Regular.user_circle,
              color: Color(kLightGrey.value),
              index: 4,
              text: "Profile",
            ),

          ],
        ),
      ),
    );
  }
}