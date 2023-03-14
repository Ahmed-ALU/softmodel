import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboardingbody extends StatelessWidget {
  const Onboardingbody({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
              height: MediaQuery.of(context).size.height * .65,
              width: MediaQuery.of(context).size.width * .85,
              // width: 350,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xffffffff)),
              child: SvgPicture.asset(
                image,
              )),
        ),
        // const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w700, color: const Color(0xff072f54)),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        // const Spacer(),
      ],
    );
  }
}
