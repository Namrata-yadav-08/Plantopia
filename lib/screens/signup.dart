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
        body: ListView(children: [
          Header(text1: 'Sign Up', text2: 'Create your new account'),
          // _inputField(context),
          // outlinebuttn(context),
        ]));
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

//   _inputField(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Container(
//           margin: const EdgeInsets.only(left: 20),
//           child: const Text(
//             "Username",
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(15),
//           child: TextField(
//             keyboardType: TextInputType.name,
//             controller: emailtext,
//             style: const TextStyle(color: Colors.black),
//             decoration: InputDecoration(
//               fillColor: Color.fromRGBO(196, 196, 196, 0.2),
//               filled: true,
//               hintText: "Enter Your Username",
//               hintStyle: const TextStyle(color: Colors.grey),
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
//           margin: const EdgeInsets.only(left: 20),
//           child: const Text(
//             "Password",
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(15),
//           child: TextField(
//             controller: password,
//             obscureText: true,
//             style: const TextStyle(color: Colors.black),
//             decoration: InputDecoration(
//                 fillColor: Color.fromRGBO(196, 196, 196, 0.2),
//                 filled: true,
//                 hintText: "Password",
//                 hintStyle: const TextStyle(color: Colors.grey),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(color: Colors.white)),
//                 suffixStyle: const TextStyle(color: Colors.indigo)),
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.only(left: 20),
//           child: const Text(
//             "Confirm Password",
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(15),
//           child: TextField(
//             controller: confirmpass,
//             obscureText: true,
//             style: const TextStyle(color: Colors.black),
//             decoration: InputDecoration(
//                 fillColor: Color.fromRGBO(196, 196, 196, 0.2),
//                 filled: true,
//                 hintText: "Confirm Password",
//                 hintStyle: const TextStyle(color: Colors.grey),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(color: Colors.white)),
//                 suffixStyle: const TextStyle(color: Colors.indigo)),
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(15),
//           child: ElevatedButton(
//             onPressed: () {
//               String uname = emailtext.text.toString();
//               String passwrd = password.text.toString();
//               usersignup();
//             },
//             style: ElevatedButton.styleFrom(
//               shape: const ContinuousRectangleBorder(),
//               backgroundColor: const Color.fromARGB(255, 255, 100, 125),
//               padding: const EdgeInsets.symmetric(vertical: 16),
//             ),
//             child: const Text(
//               "SignUp",
//               style: TextStyle(fontSize: 20, color: Colors.white),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   _signup(context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text(
//           "Don’t have an account?",
//           style: TextStyle(color: Colors.grey),
//         ),
//         TextButton(onPressed: () {}, child: const Text("SignUp"))
//       ],
//     );
//   }

//   outlinebuttn(context) {
//     return Column(
//       children: [
//         Container(
//           margin: const EdgeInsets.all(19),
//           width: 400,
//           height: 70,
//           child: OutlinedButton(
//             onPressed: () {},
//             style: ButtonStyle(
//               shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               )),
//               side: MaterialStateProperty.all<BorderSide>(
//                 const BorderSide(color: Colors.blue),
//               ),
//             ),
//             child: const Row(
//               children: [
//                 Padding(padding: EdgeInsets.all(30)),
//                 Icon(
//                   Icons.search,
//                   color: Colors.red,
//                 ),
//                 SizedBox(
//                   width: 30,
//                 ),
//                 Text(
//                   "Continue With Google",
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(19),
//           child: OutlinedButton(
//             onPressed: () {},
//             style: ButtonStyle(
//               shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               )),
//               side: MaterialStateProperty.all<BorderSide>(
//                 const BorderSide(color: Colors.blue),
//               ),
//             ),
//             child: const Row(
//               children: [
//                 Padding(padding: EdgeInsets.all(30)),
//                 Icon(
//                   Icons.apple,
//                   color: Colors.red,
//                 ),
//                 SizedBox(
//                   width: 30,
//                 ),
//                 Text(
//                   "Continue With Apple",
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
