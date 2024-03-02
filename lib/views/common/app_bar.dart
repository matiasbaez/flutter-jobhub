import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:jobhub/views/common/common.dart';

class CustomAppBar extends StatelessWidget {

  final String? text;
  final Widget child;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    this.text,
    required this.child,
    this.actions
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(),
      backgroundColor: Color(kLight.value),
      elevation: 0,
      automaticallyImplyLeading: false,
      leadingWidth: 70.w,
      leading: child,
      actions: actions,
      centerTitle: true,
      title: ReusableText(
        text: text ?? "",
        style: appstyle(16, Color(kDark.value), FontWeight.w500),
      ),
    );
  }
}