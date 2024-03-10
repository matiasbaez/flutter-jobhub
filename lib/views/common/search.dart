import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:jobhub/views/common/common.dart';

class SearchWidget extends StatelessWidget {

  final void Function()? onTap;

  const SearchWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [

              SizedBox(
                width: width * .82,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Feather.search, color: Color(kOrange.value), size: 20),

                    const WidthSpacer(width: 20),

                    ReusableText(
                      text: "Search for jobs",
                      style: appstyle(18, Color(kOrange.value), FontWeight.w500)
                    ),
                  ],
                ),
              ),

              Icon(
                FontAwesome.sliders,
                color: Color(kDarkGrey.value),
                size: 20.h
              ),
            ],
          ),

          const HeightSpacer(size: 7),
          Divider(
            color: Color(kDarkGrey.value),
            thickness: .5,
            endIndent: 40.w,
          )
        ],
      ),
    );
  }
}