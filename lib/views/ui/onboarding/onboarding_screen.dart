
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:jobhub/views/common/common.dart';
import 'package:jobhub/views/ui/onboarding/widgets/widgets.dart';

class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({ super.key });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final pageController = PageController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const ClampingScrollPhysics(),
            controller: pageController,
            onPageChanged: (page) {
              // TODO: Add the logic to manage the page state
            },
            children: const [
              PageOne(),
              PageTwo(),
              PageThree()
            ],
          ),

          // TODO: Hide in the last page
          Positioned(
            bottom: height * 0.12,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  spacing: 10,
                  dotColor: Color(kDarkGrey.value).withOpacity(.5),
                  activeDotColor: Color(kLight.value)
                ),
              ),
            ),
          ),

          // TODO: Hide in the last page
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    GestureDetector(
                      onTap: () {
                        pageController.jumpToPage(2);
                      },
                      child: ReusableText(
                        text: "Skip",
                        style: appstyle(16, Color(kLight.value), FontWeight.w500),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        pageController.nextPage(
                          duration: const Duration(microseconds: 500),
                          curve: Curves.ease
                        );
                      },
                      child: ReusableText(
                        text: "Next",
                        style: appstyle(16, Color(kLight.value), FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}