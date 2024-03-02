
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobhub/views/common/common.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageThree extends StatelessWidget {

  const PageThree({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Color(kLightBlue.value),
        child: Column(
          children: [

            Image.asset("assets/images/page3.png"),

            const HeightSpacer( size: 20 ),

            ReusableText(
              text: "Welcome to JobHub",
              style: appstyle(30, Color(kLight.value), FontWeight.w600)
            ),

            const HeightSpacer( size: 15 ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "We help you find your dream job according to your skillset, location and preference to build your carreer",
                style: appstyle(14, Color(kLight.value), FontWeight.normal)
              ),
            ),

            const HeightSpacer(size: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                CustomOutlineBtn(
                  text: "Login",
                  width: width*.4,
                  height: height*.06,
                  primaryColor: Color(kLight.value),
                  onTap: () async {
                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('entrypoint', true);
                    if (!context.mounted) return;
                    context.push('/auth/login');
                  },
                ),

                CustomOutlineBtn(
                  text: "Sign Up",
                  width: width*.4,
                  height: height*.06,
                  primaryColor: Color(kLightBlue.value),
                  secondaryColor: Color(kLight.value),
                  onTap: () async {
                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('entrypoint', true);
                    if (!context.mounted) return;
                    context.push('/auth/singup');
                  },
                ),

              ],
            ),

            const HeightSpacer(size: 30),

            ReusableText(
              text: "Continue as guest",
              style: appstyle(16, Color(kLight.value), FontWeight.w400)
            )
          ]
        ),
      ),
    );
  }
}