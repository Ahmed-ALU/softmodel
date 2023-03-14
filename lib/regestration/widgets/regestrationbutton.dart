import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../screens/loginscreen.dart';
import '../screens/signupscreen.dart';

class RegestrationButton extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  final Color bg;
  final Color stroke;
  final String text;
  final Color textcolor;
  // final Widget page;
  final Function func;
  // final NavigatorState navigator;

  const RegestrationButton({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
    required this.bg,
    required this.stroke,
    required this.text,
    required this.textcolor,
    // required this.page,
    required this.func,
    // required this.navigator
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: stroke,
          width: 2,
        ),
        color: bg,
      ),
      child: MaterialButton(
        onPressed: () {
          func();
        },
        child: Text(
          text,
          style: TextStyle(
            color: textcolor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
