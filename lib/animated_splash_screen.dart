import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'home.dart';

class SplachScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          AnimatedSplashScreen(
            splashIconSize: 150.sp,
            splash: Center(
              child: Image.asset("images/Group 12.png"),
            ),
            nextScreen: Home(),
            splashTransition: SplashTransition.fadeTransition,
            duration: 2000,
          ),
        ],
      ),
    );
  }
}
