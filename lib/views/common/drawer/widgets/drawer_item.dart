
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/views/common/common.dart';
import 'package:jobhub/views/common/reusable_text.dart';
import 'package:jobhub/views/common/width_spacer.dart';

class DrawerItem extends StatelessWidget {

  final IconData icon;
  final String text;
  final int index;
  final Color color;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.text,
    required this.index,
    required this.color
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: null,
      child: Container(
        margin: EdgeInsets.only( left: 20.w, bottom: 20.h ),
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
            ),

            const WidthSpacer(width: 12),

            ReusableText(
              text: text,
              style: appstyle(12, color, FontWeight.bold)
            )
          ],
        ),
      ),
    );
  }
}