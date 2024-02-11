import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantopia/screens/signin.dart';
import 'package:plantopia/widgets/Header.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    super.key,
    required void Function() onTap,
  });

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // var emailtext = TextEditingController();
  // var password = TextEditingController();
  // var confirmpass = TextEditingController();
  // void usersignup() async {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const Center(
  //         child: CircularProgressIndicator(),
  //       );
  //     },
  //   );
  //   try {
  //     if (password.text == confirmpass.text) {
  //       final userCredential =
  //           await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: emailtext.text,
  //         password: password.text,
  //       );
  //       showdialog(context);
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) => SignIn(
  //                     onTap: () {},
  //                   )));
  //       Navigator.of(context).pop();
  //     } else {
  //       Navigator.pop(context);
  //       showErrorMessage("Password doesn't match");
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     Navigator.pop(context);
  //     showErrorMessage(e.code);
  //   }
  // }

  // void showErrorMessage(String message) {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //           backgroundColor: Color.fromARGB(255, 245, 240, 255),
  //           title: Text('Error'),
  //           content: Text(message),
  //           actions: <Widget>[
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: Text('OK',
  //                   style: TextStyle(color: Color.fromARGB(255, 245, 69, 101))),
  //             )
  //           ]);
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Header(text1: 'Sign Up', text2: 'Create your new account'),
      // _inputField(context),
      // outlinebuttn(context),
    );
  }
}
//   void showdialog(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text("You are SignUped"),
//             actions: <Widget>[
//               TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => SignIn(
//                                   onTap: () {},
//                                 )));
//                   },
//                   child: const Text(
//                     "OK",
//                     style: TextStyle(color: Color.fromARGB(255, 245, 69, 101)),
//                   )),
//             ],
//           );
//         });
//   }
