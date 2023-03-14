import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:softmodel/regestration/widgets/signupbody.dart';

import '../../firebase_options.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
          body: FutureBuilder(
            future: Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform,
            ),
            builder: (context, snapshot) {
              //TODO: Snapshot.connection state snackshowbar
              return SignupBody();
            },
          )
          // SingleChildScrollView(child: SignupBody()),
          ),
    );
  }
}


// switch (snapshot.connectionState) {
//                 case ConnectionState.none:
//                   // TODO: Handle this case.
//                   break;
//                 case ConnectionState.waiting:
//                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                     content: Text('Waiting'),
//                     backgroundColor: Colors.yellow,
//                   ));
//                   break;
//                 case ConnectionState.active:
//                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                     content: Text('Active'),
//                     backgroundColor: Colors.green,
//                   ));
//                   break;
//                 case ConnectionState.done:
//                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                     content: Text('Done'),
//                     backgroundColor: Colors.blue,
//                   ));
//                   break;
//               }