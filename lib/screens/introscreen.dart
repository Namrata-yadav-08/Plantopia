import 'package:flutter/material.dart';
import 'package:plantopia/screens/signin.dart';
import 'package:plantopia/screens/signup.dart';
import 'package:plantopia/widgets/CustomButton.dart';
import 'package:plantopia/widgets/screensize.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({super.key});

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: ScreenSize.height(context) *
                0.52, // Adjust the height as needed
            decoration: BoxDecoration(
              // gradient: LinearGradient(colors: [
              //   Color.fromARGB(201, 17, 136, 68),
              //   Color.fromARGB(0, 217, 217, 217)
              // ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              image: DecorationImage(
                image: AssetImage('assets/images/plant05 1.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: ScreenSize.height(context) * 0.04625),
            child: Text(
              'Know about plants',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255, 91, 90, 90),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: ScreenSize.height(context) * 0.0121875,
                horizontal: ScreenSize.width(context) * 0.0972),
            child: Center(
                child: Column(
              children: [
                Text("Let's learn more about beautiful plants",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      color: Color.fromARGB(255, 91, 90, 90),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ))),
                Text("and read many articles about plants",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      color: Color.fromARGB(255, 91, 90, 90),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ))),
                Text(" and gardening",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      // height: 22.5,
                      color: Color.fromARGB(255, 91, 90, 90),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ))),
              ],
            )),
          ),
          SizedBox(
            height: ScreenSize.height(context) * 0.05625,
          ),
          CustomButton(
            text: 'Sign In',
            onPressed: () {
              print('Sign In button pressed');
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SignIn(
                        onTap: () {},
                      )));
            },
          ),
          SizedBox(
            height: ScreenSize.height(context) * 0.02,
          ),
          CustomButton(
            text: 'Sign Up',
            onPressed: () {
              print('Sign Up button pressed');
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SignUp(
                        onTap: () {},
                      )));
            },
          ),
        ],
      ),
    );
  }
}
