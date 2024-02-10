import 'package:flutter/material.dart';
import 'package:plantopia/screens/signin.dart';
import 'package:plantopia/screens/signup.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLogin = true;
  void togglePages() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin = true) {
      return SignIn(
        onTap: togglePages,
      );
    } else {
      return SignUp(onTap: togglePages);
    }
  }
}
