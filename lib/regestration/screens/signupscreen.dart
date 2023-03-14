import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:softmodel/regestration/widgets/signupbody.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SignupBody()
          // SingleChildScrollView(child: SignupBody()),
          ),
    );
  }
}
