import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantopia/screens/signup.dart';
import 'package:plantopia/widgets/Header.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    super.key,
    required void Function() onTap,
  });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
      body: Header(
        text1: 'Sign In',
        text2: 'Log in to your account',
      ),
    );
  }
}
