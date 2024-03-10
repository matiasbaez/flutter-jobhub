import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

import 'package:jobhub/views/common/common.dart';
import 'package:jobhub/views/common/horizontal_tile.dart';

class HomePage extends StatefulWidget {

  final void Function()? onTap;

  const HomePage({
    super.key,
    this.onTap
  });

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric( horizontal: 20.w ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const HeightSpacer(size: 10),
                Text(
                  "Search \nFind & Apply",
                  style: appstyle(40, Color(kDark.value), FontWeight.bold),
                ),

                const HeightSpacer(size: 40),

                SearchWidget(
                  onTap: () => context.push("/search"),
                ),

                const HeightSpacer(size: 30),

                HeadingWidget(
                  text: "Popular Jobs",
                  onTap: () {},
                ),

                const HeightSpacer(size: 15),

                SizedBox(
                  height: height * .28,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return JobHorizontalTile(
                        onTap: () {},
                      );
                    }
                  ),
                ),

                const HeightSpacer(size: 20),

                HeadingWidget(
                  text: "Recently Posted",
                  onTap: () {},
                ),

                const HeightSpacer(size: 15),

                const VerticalTile(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}