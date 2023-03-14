import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:softmodel/regestration/screens/regestrationscreen.dart';

class OnboardingButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final PageController pageController;
  final int index;

  const OnboardingButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.pageController,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton.extended(
          onPressed: () {
            index == 2
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Regestration()))
                : pageController.nextPage(
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.ease);
          },
          label: Text(label),
          icon: Icon(icon),
          backgroundColor: const Color(0xff072f54),
        )
      ],
    );
  }
}
