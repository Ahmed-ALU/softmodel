import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:softmodel/regestration/widgets/signupbody.dart';

import '../../firebase_options.dart';
import '../widgets/loginbody.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    r"lib\regestration\assets\images\regscreen2.jpg"),
                fit: BoxFit.cover)),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: FutureBuilder(
              future: Firebase.initializeApp(
                options: DefaultFirebaseOptions.currentPlatform,
              ),
              builder: (context, snapshot) {
                //TODO: Snapshot.connection state snackshowbar
                return LoginBody();
              },
            ))
        // SingleChildScrollView(child: SignupBody()),
        );
  }
}
