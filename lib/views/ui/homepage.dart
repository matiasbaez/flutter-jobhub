import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:jobhub/views/common/common.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          actions: [
            Padding(
              padding: EdgeInsets.all(5.h),
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
            )
          ],
          child: const DrawerWidget(),
        ),
      ),
    );
  }
}