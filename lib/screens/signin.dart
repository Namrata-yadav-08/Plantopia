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
      body: Header(text1: 'Sign In', text2: 'Log in to your account'),
      // Container(
      //   margin: EdgeInsets.all(20),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       const Padding(padding: EdgeInsets.only(top: 10)),
      //       buildcircl(context),
      //       _header(context),
      //       _inputField(context),
      //       Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      //         _forgotPassword(context),
      //       ]),
      //       //textline(),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Row(
      //           children: [
      //             Expanded(
      //                 child: Divider(
      //               thickness: 1,
      //               color: Colors.grey,
      //             )),
      //             Text('or', style: TextStyle(color: Colors.grey)),
      //             Expanded(
      //                 child: Divider(
      //               thickness: 1,
      //               color: Colors.grey,
      //             ))
      //           ],
      //         ),
      //       ),
      //       textcontinue(),
      //       buildiconbutton(context),
      //       SignUp(
      //         onTap: () {},
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

//   Widget buildiconbutton(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         iconButton(context, const Icon(Icons.content_paste_go_sharp), () {},
//             Colors.red),
//         iconButton(context, const Icon(Icons.apple), () {}, Colors.black),
//       ],
//     );
//   }

//   Widget iconButton(
//       BuildContext context, Icon icon, VoidCallback onPressed, Color color) {
//     return IconButton(
//       icon: icon,
//       onPressed: onPressed,
//       iconSize: 30,
//       color: color,
//     );
//   }

//   CustomText textcontinue() {
//     return const CustomText(
//       text: "continue with",
//       fontStyle: null,
//       color: Colors.black,
//       fontSize: 15,
//     );
//   }

//   CustomText textline() {
//     return const CustomText(
//       text: "__________________________or______________________________",
//       color: Colors.grey,
//       fontSize: 15,
//       fontStyle: null,
//     );
//   }

//   RowSignUp() {
//     return const Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CustomText(
//           text: "Don't have account?",
//           fontSize: 15,
//           color: Colors.black,
//           fontStyle: FontStyle.normal,
//         ),
//         Const()
//       ],
//     );
//   }

//   _header(context) {
//     return const Column(
//       children: [
//         CustomText(
//           text: "Welcome Back",
//           fontStyle: null,
//           color: Colors.black,
//           fontweigth: FontWeight.bold,
//           fontSize: 40,
//         ),
//         CustomText(
//           text: "sign in to access your account",
//           fontStyle: null,
//           color: Colors.black,
//           fontSize: 15,
//         )
//       ],
//     );
//   }

//   _inputField(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Container(
//           margin: const EdgeInsets.all(15),
//           child: TextField(
//             keyboardType: TextInputType.name,
//             controller: emailtext,
//             style: const TextStyle(color: Colors.black),
//             decoration: InputDecoration(
//               fillColor: const Color.fromRGBO(196, 196, 196, 0.2),
//               filled: true,
//               hintText: "Enter Your Username",
//               hintStyle: const TextStyle(color: Colors.grey),
//               suffixIcon: const Icon(Icons.mail),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(color: Colors.white)),
//             ),
//           ),
//         ),

//         Container(
//           margin: const EdgeInsets.all(15),
//           child: TextField(
//             controller: password,
//             obscureText: true,
//             obscuringCharacter: '*',
//             style: const TextStyle(color: Colors.black),
//             decoration: InputDecoration(
//                 fillColor: const Color.fromRGBO(196, 196, 196, 0.2),
//                 filled: true,
//                 hintText: "Password",
//                 hintStyle: const TextStyle(color: Colors.grey),
//                 suffixIcon: const Icon(Icons.lock),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   // borderSide: const BorderSide(color: Colors.blue),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(color: Colors.white)),
//                 suffixStyle: const TextStyle(color: Colors.indigo)),
//           ),
//         ),
//         // const SizedBox(height: 10),
//         Container(
//           margin: const EdgeInsets.all(15),
//           child: ElevatedButton(
//             onPressed: () {
//               String uname = emailtext.text.toString();
//               String passwrd = password.text.toString();
//               // print(uname);
//               // Navigator.pushNamed(context, 'main_screen');
//               signuserin();
//             },
//             style: ElevatedButton.styleFrom(
//               // shape: const StadiumBorder(),
//               shape: const ContinuousRectangleBorder(),
//               // backgroundColor: const Color.fromARGB(255, 255, 100, 125),
//               backgroundColor: Color.fromARGB(255, 245, 69, 101),

//               padding: const EdgeInsets.symmetric(vertical: 16),
//             ),
//             child: const Text(
//               "SignIn",
//               style: TextStyle(fontSize: 20, color: Colors.white),
//             ),
//           ),
//         )
//       ],
//     );
//   }

//   _forgotPassword(context) {
//     return TextButton(
//         onPressed: () {
//           Navigator.pushNamed(context, 'forgotpasswordpage');
//         },
//         child: const CustomText(
//           text: "Forget Password ?",
//           fontStyle: null,
//           color: Color.fromARGB(255, 245, 69, 101),
//           fontSize: 15,
//         ));
//   }

//   Widget buildcircl(BuildContext context) {
//     return Image.asset("assets/images/2.png");
//   }
// }

// class Const extends StatelessWidget {
//   const Const({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//         onPressed: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => SignUp(
//                         onTap: () {},
//                       )));
//         },
//         child: const Text(
//           "Register",
//           style: TextStyle(color: Color.fromARGB(255, 245, 69, 101)),
//         ));
//   }
// }

// class CustomTextField extends StatelessWidget {
//   const CustomTextField({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return TextField();
//   }
// }

// // class CustomText extends StatelessWidget {
// //   final String text;
// //   final Color? color;
// //   final FontStyle? fontStyle;
// //   final double? fontSize;
// //   final FontWeight? fontweigth;

// //   const CustomText({
// //     required this.text,
// //     required this.fontStyle,
// //     required this.color,
// //     this.fontSize,
// //     this.fontweigth,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Text(
// //       text,
// //       style: TextStyle(
// //           color: color ?? Colors.white,
// //           fontSize: fontSize ?? 10,
// //           fontStyle: fontStyle ?? FontStyle.normal,
// //           fontWeight: fontweigth),
// //     );
// //   }
// // }
