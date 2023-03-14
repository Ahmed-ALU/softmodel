import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'splashscreen/screens/animatedsplashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    home: const AnimatedSplash(
      bgcolor: 0xfffbc108,
      duration: 3000,
      iconsize: 150,
    ),
  ));
}
