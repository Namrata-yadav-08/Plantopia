import 'package:flutter/material.dart';
import 'package:plantopia/screens/Home.dart';
import 'package:plantopia/screens/community1.dart';
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
      initialRoute: 'home',
      routes: {
        'home': (context) => const Home(),
        'homescreen': (context) => const Home_Screen(),
        'nav': (context) => const Nav(),
        'comm': (context) => comm(),
        'profile': (context) => const Profile(),
        'introscreen': (context) => const Intro_Screen(),
        'game': (context) => Game(),
        'signin': (context) => SignIn(
              onTap: () {},
            ),
        'signup': (context) => SignUp(
              onTap: () {},
            ),
        'splashscreen': (context) => SplashScreen(),
      },
    );
  }
}
