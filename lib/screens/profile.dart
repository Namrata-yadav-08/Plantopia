import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // final _height = MediaQuery.of(context).size.height;
    // final _width = MediaQuery.of(context).size.height;
    return Scaffold(body: Image.asset('assets/images/Frame.png')
        //  SvgPicture.asset(
        //   'assets/images/Frame.svg',
        //   height: _height * 0.31625,
        //   width: _width * 1,
        //   fit: BoxFit.fitWidth,
        // ),
        );
  }
}
