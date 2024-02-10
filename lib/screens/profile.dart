import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantopia/screens/user_controller.dart';
import 'package:plantopia/widgets/screensize.dart';
//import 'package:location/location.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User? user;
  String? globalUserImage;
  String? userLocation;

  @override
  void initState() {
    super.initState();
    globalUserImage = userController.userImage.value;
    // Fetch the currently logged-in user
    getUser();
    // getUserLocation();
  }

  Future<void> getUser() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      setState(() {
        user = currentUser;
      });
      // You can access user.email, user.displayName, user.photoURL, etc.
    }
  }

//  // Future<void> getUserLocation() async {
//     Location location = Location();
//     try {
//       LocationData currentLocation = await location.getLocation();
//       setState(() {
//         userLocation =
//             'Location: ${currentLocation.latitude}, ${currentLocation.longitude}';
//       });
//     } catch (e) {
//       print("Error getting user location: $e");
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Container(
        height:
            ScreenSize.height(context) * 0.31625, // Adjust the height as needed
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Frame.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
          children: [
            CircleAvatar(
              backgroundImage:
                  globalUserImage != null && globalUserImage!.isNotEmpty
                      ? FileImage(
                          File(globalUserImage!)) // User's image if available
                      : AssetImage('assets/images/Group 171 (2).png')
                          as ImageProvider<Object>,
              radius: 45,
            ),
            Text(
              '${user?.displayName ?? 'User'}',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (userLocation != null)
              Text(userLocation!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ))
          ],
        )),
      ),
      Row(children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.green),
          child: Text("Articles"),
        ),
        Container(),
        Container()
      ])
    ])
        //  SvgPicture.asset(
        //   'assets/images/Frame.svg',
        //   height: _height * 0.31625,
        //   width: _width * 1,
        //   fit: BoxFit.fitWidth,
        // ),
        );
  }
}
