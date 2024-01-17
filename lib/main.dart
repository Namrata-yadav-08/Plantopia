import 'package:flutter/material.dart';
import 'package:plantopia/screens/community.dart';
import 'package:plantopia/screens/game.dart';
import 'package:plantopia/screens/homescreen.dart';
import 'package:plantopia/screens/introscreen.dart';
import 'package:plantopia/screens/nav.dart';
import 'package:plantopia/screens/profile.dart';
import 'package:plantopia/screens/signin.dart';
import 'package:plantopia/screens/signup.dart';
import 'package:plantopia/screens/splashscreen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'nav',
      routes: {
        'homescreen': (context) => const Home_Screen(),
        'nav': (context) => const Nav(),
        'profile': (context) => const Profile(),
        'introscreen': (context) => const Intro_Screen(),
        'community': (context) => Community(),
        'game': (context) => Game(),
        'signin': (context) => SignIn(),
        'signup': (context) => SignUp(),
        'splashscreen': (context) => Splash_Screen(),
      },
    );
  }
}
