import 'package:flutter/material.dart';
import 'package:jobhub/views/common/common.dart';

class CustomOutlineBtn extends StatelessWidget {

  final double? width;
  final double? height;
  final String text;
  final void Function()? onTap;
  final Color primaryColor;
  final Color? secondaryColor;

  const CustomOutlineBtn({
    super.key,
    this.width,
    this.height,
    required this.text,
    this.onTap,
    required this.primaryColor,
    this.secondaryColor
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(
            width: 1,
            color: primaryColor
          )
        ),
        child: Center(
          child: ReusableText(
            text: text,
            style: appstyle(16, primaryColor, FontWeight.w600),
          ),
        ),
      ),
    );
  }
}