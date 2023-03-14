import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:softmodel/regestration/widgets/regestrationbody.dart';
import 'package:softmodel/regestration/widgets/regestrationbutton.dart';

class Regestration extends StatelessWidget {
  const Regestration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image:
                  AssetImage(r"lib\regestration\assets\images\regscreen2.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: RegestrationBody(),
      ),
    );
  }
}
