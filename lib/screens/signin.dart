import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantopia/widgets/Header.dart';
import 'package:plantopia/widgets/footer.dart';
import 'package:plantopia/widgets/inputFields.dart';
import 'package:plantopia/widgets/screensize.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    super.key,
    required void Function() onTap,
  });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
// String name = nameController.text;
// String email = emailController.text;
// String password = passwordController.text;

//   final emailtext = TextEditingController();
//   final password = TextEditingController();

//   void signuserin() async {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return const Center(
//           child: CircularProgressIndicator(),
//         );
//       },
//     );
//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: emailtext.text,
//         password: password.text,
//       );
//       Navigator.pop(context);
//     } on FirebaseAuthException catch (e) {
//       Navigator.pop(context);
//       showErrorMessage(e.code);
//     }
//   }

//   void showErrorMessage(String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//             backgroundColor: Color.fromARGB(255, 245, 240, 255),
//             title: Text('Error'),
//             content: Text(message),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text('OK',
//                     style: TextStyle(color: Color.fromARGB(255, 245, 69, 101))),
//               )
//             ]);
//       },
//     );
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              text1: 'Sign In',
              text2: 'Log in to your account',
            ),
            CustomInputField(
              hintText: 'Username',
              icon: Icons.person,
              controller: usernameController,
            ),
            SizedBox(
              height: ScreenSize.height(context) * 0.0225,
            ),
            CustomInputField(
              hintText: 'Password',
              icon: Icons.lock,
              controller: passwordController,
            ),
            SizedBox(
              height: ScreenSize.height(context) * 0.025,
            ),
            Padding(
              padding: EdgeInsets.only(left: ScreenSize.width(context) * 0.561),
              child: TextButton(
                  onPressed: () {},
                  child: Text('Forget password ?',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        color: Color.fromARGB(255, 1, 1, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )))),
            ),
            SizedBox(
              height: ScreenSize.height(context) * 0.045,
            ),
            Footer(
              text3: 'Sign In',
              onPressed: () {},
              text4: "Don't have an account?",
              text5: 'Sign Up',
              routeName: 'signup',
            )
          ],
        ));
  }
}
