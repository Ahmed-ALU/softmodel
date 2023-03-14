import 'package:softmodel/onboarding/screens/onboardingscreen.dart';
import 'package:softmodel/onboarding/widgets/onboardingbody.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/animatedlogo.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';

class AnimatedSplash extends StatelessWidget {
  final int duration, bgcolor;
  final double iconsize;
  const AnimatedSplash(
      {super.key,
      required this.iconsize,
      required this.duration,
      required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Center(
            child: AnimatedLogo(
                duration: 2,
                height: 125,
                width: 125,
                padding: 8.0,
                curveType: Curves.decelerate,
                imageWidget:
                    r'lib\splashscreen\assets\images\Logobluevert.png')),
        splashIconSize: iconsize,
        duration: duration,
        backgroundColor: Color(bgcolor),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        nextScreen: const OnBoardingScreen(),
      ),
    );
  }
}
