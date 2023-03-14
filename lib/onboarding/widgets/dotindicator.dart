import 'package:flutter/cupertino.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInCirc,
      height: 10,
      width: isActive ? 30 : 10,
      decoration: const BoxDecoration(
          color: Color(0xff072f54),
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
