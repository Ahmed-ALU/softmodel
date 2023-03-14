import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:softmodel/regestration/screens/loginscreen.dart';
import 'package:softmodel/regestration/screens/signupscreen.dart';
import 'package:softmodel/regestration/widgets/regestrationbutton.dart';

class RegestrationBody extends StatelessWidget {
  const RegestrationBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'lib/regestration/assets/images/logoAlonev1.png',
                width: 100,
              ),
            ),
          ),
          // Spacer(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * .40,
            width: MediaQuery.of(context).size.width * .90,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 2.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
            ),
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              const Text(
                "Register",
                style: TextStyle(
                  color: Color(0xff072f53),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.app_registration_rounded,
                size: 60,
              ),
              const Spacer(),
              RegestrationButton(
                  height: MediaQuery.of(context).size.height * .07,
                  width: MediaQuery.of(context).size.width * .8,
                  radius: 15,
                  bg: const Color(0xff072f53),
                  stroke: const Color(0xffffffff),
                  text: "LogIn",
                  textcolor: const Color(0xffffffff),
                  func: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false,
                    );
                  }),
              const SizedBox(height: 16),
              RegestrationButton(
                  height: MediaQuery.of(context).size.height * .07,
                  width: MediaQuery.of(context).size.width * .8,
                  radius: 15,
                  bg: const Color(0xffffffff),
                  stroke: const Color(0xff072f53),
                  text: "SignUp",
                  textcolor: const Color(0xff072f53),
                  func: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                      (route) => false,
                    );
                  }),
              const Spacer(),
            ]),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}




// Deprecated 
// class RegestrationBody extends StatelessWidget {
//   const RegestrationBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Center(
//         child: Column(
//           children: [
//             SizedBox(height: MediaQuery.of(context).size.height * .025),
//             Image.asset(
//               r'lib\onboarding\assets\images\TextAlone.png',
//               width: MediaQuery.of(context).size.width * .5,
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * .2,
//             ),
//             SvgPicture.asset(
//               r'lib\regestration\assets\images\signup.svg',
//               height: MediaQuery.of(context).size.height * .30,
//             ),
//             SizedBox(height: MediaQuery.of(context).size.height * .15),
//             Column(
//               children: [
//                 RegestrationButton(
//                     height: MediaQuery.of(context).size.height * .07,
//                     width: MediaQuery.of(context).size.width * .9,
//                     radius: 15,
//                     bg: Color(0xff072f53),
//                     stroke: Color(0xffffffff),
//                     text: "LogIn",
//                     textcolor: Color(0xffffffff)),
//                 SizedBox(height: 16),
//                 RegestrationButton(
//                     height: MediaQuery.of(context).size.height * .07,
//                     width: MediaQuery.of(context).size.width * .9,
//                     radius: 15,
//                     bg: Color(0xffffffff),
//                     stroke: Color(0xff072f53),
//                     text: "SignUp",
//                     textcolor: Color(0xff072f53))
//               ],
//             ),
//             Spacer()
//           ],
//         ),
//       ),
//     );
//   }
// }
