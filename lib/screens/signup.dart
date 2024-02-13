import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plantopia/widgets/Header.dart';
import 'package:plantopia/widgets/footer.dart';
import 'package:plantopia/widgets/inputFields.dart';
import 'package:plantopia/widgets/screensize.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    super.key,
    required void Function() onTap,
  });

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
      body: Column(
        children: [
          Header(
            text1: 'Sign Up',
            text2: 'Create your new account',
          ),
          CustomInputField(
            hintText: 'Fist and last name',
            icon: Icons.person,
            controller: nameController,
          ),
          SizedBox(
            height: ScreenSize.height(context) * 0.02,
          ),
          CustomInputField(
            hintText: 'Username',
            icon: Icons.person,
            controller: usernameController,
          ),
          SizedBox(
            height: ScreenSize.height(context) * 0.02,
          ),
          CustomInputField(
            hintText: 'Email',
            icon: Icons.mail,
            controller: emailController,
          ),
          SizedBox(
            height: ScreenSize.height(context) * 0.02,
          ),
          CustomInputField(
            hintText: 'Password',
            icon: Icons.lock,
            controller: passwordController,
          ),
          SizedBox(
            height: ScreenSize.height(context) * 0.0275,
          ),
          Footer(
            text3: 'Sign Up',
            onPressed: () {},
            text4: "Already have an account?",
            text5: 'Sign In',
            routeName: 'signin',
          )
        ],
      ),
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
