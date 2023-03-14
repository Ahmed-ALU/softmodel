import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../domain/models/onboardingmodel.dart';
import '../widgets/buttonwidget.dart';
import '../widgets/dotindicator.dart';
import '../widgets/onboardingbody.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageindex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfffbc108),
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _pageindex = index;
                  });
                },
                itemCount: demo_data.length,
                controller: _pageController,
                itemBuilder: (context, index) => Onboardingbody(
                  description: demo_data[index].description,
                  title: demo_data[index].title,
                  image: demo_data[index].image,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        demo_data.length,
                        (index) => Padding(
                              padding: EdgeInsets.only(right: 4),
                              child: DotIndicator(
                                isActive: index == _pageindex,
                              ),
                            )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: OnboardingButton(
                    icon: _pageindex == 2
                        ? Icons.app_registration_rounded
                        : Icons.arrow_forward_rounded,
                    label: _pageindex == 2 ? "Register" : "Next",
                    pageController: _pageController,
                    index: _pageindex,
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
