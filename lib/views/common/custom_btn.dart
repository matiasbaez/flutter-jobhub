import 'package:flutter/material.dart';

import 'package:jobhub/views/common/common.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final Color? color;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    required this.text,
    this.color,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(kDarkBlue.value),
        width: width,
        height: height * .065,
        child: Center(
          child: ReusableText(
            text: text,
            style: appstyle(16, color ?? Color(kLight.value), FontWeight.w600),
          ),
        ),
      ),
    );
  }
}