import 'package:flutter/material.dart';

class AnimatedLogo extends StatefulWidget {
  String imageWidget;
  int duration;
  double height, width, padding;
  Curve curveType;
  AnimatedLogo(
      {super.key,
      required this.duration,
      required this.height,
      required this.width,
      required this.padding,
      required this.curveType,
      required this.imageWidget});

  @override
  // ignore: no_logic_in_csreate_state
  State<AnimatedLogo> createState() => _AnimatedLogoState(
      duration: duration,
      height: height,
      width: width,
      padding: padding,
      curveType: curveType,
      imageWidget: imageWidget);
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with TickerProviderStateMixin {
  String imageWidget;
  int duration;
  double height, width, padding;
  Curve curveType;
  _AnimatedLogoState(
      {required this.duration,
      required this.height,
      required this.width,
      required this.padding,
      required this.curveType,
      required this.imageWidget});

  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: duration),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: curveType,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: _animation,
        child: Padding(
            padding: EdgeInsets.all(padding),
            child: Image.asset(imageWidget, width: width, height: height)),
      ),
    );
  }
}
