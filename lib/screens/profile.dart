import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantopia/screens/user_controller.dart';
import 'package:plantopia/widgets/Newsfeed.dart';
import 'package:plantopia/widgets/screensize.dart';
//import 'package:location/location.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> items = [
    "Article",
    "Donation",
    "Events",
    "Others",
  ];

  /// List of body icon
  List<Column> cards = [
    // Coustomcol(),
    Column(
      children: [
        createCard(
          imagePath: 'assets/images/Rectangle 2.18.png',
          title: 'David Aukltin, who breathed life into the Rose is dead at 92',
          authorName: 'Vidhi kkkGupta',
          date: '2024 . 01 . 01',
        ),
        createCard(
          imagePath: 'assets/images/Rectangle 2.2.png',
          title: 'David Austin, who breathed life into the Rose is dead at 92',
          authorName: 'Vidhi Gupta',
          date: '2024 . 01 . 01',
        ),
        createCard(
          imagePath: 'assets/images/Rectangle 2.2.png',
          title: 'David Austin, who breathed life into the Rose is dead at 92',
          authorName: 'Vidhi Gupta',
          date: '2024 . 01 . 01',
        ),
      ],
    ),
    Column(
      children: [
        createCard(
          imagePath: 'assets/images/Rectangle 2.2.png',
          title: 'David Austin, who breathed life into the Rose is dead at 92',
          authorName: 'Vidhi Gupta',
          date: '2024 . 01 . 01',
        ),
      ],
    ),
    Column(
      children: [
        createCard(
          imagePath: 'assets/images/Rectangle 2.18.png',
          title: 'David Austin, who breathed life into the Rose is dead at 92',
          authorName: 'Vidhi Gupta',
          date: '2024 . 01 . 01',
        ),
      ],
    ),
    Column(
      children: [
        createCard(
          imagePath: 'assets/images/Rectangle 2.18.png',
          title: 'David Austin, who breathed life into the Rose is dead at 92',
          authorName: 'Vidhi Gupta',
          date: '2024 . 01 . 01',
        ),
      ],
    ),
    Column(
      children: [
        createCard(
          imagePath: 'assets/images/Rectangle 2.18.png',
          title: 'David Austin, who breathed life into the Rose is dead at 92',
          authorName: 'Vidhi Gupta',
          date: '2024 . 01 . 01',
        ),
      ],
    )
  ];
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

  int current = 0;
  PageController pageController = PageController();

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
              Container(
                padding:
                    EdgeInsets.only(top: ScreenSize.height(context) * 0.08875),
                child: CircleAvatar(
                  backgroundImage: globalUserImage != null &&
                          globalUserImage!.isNotEmpty
                      ? FileImage(
                          File(globalUserImage!)) // User's image if available
                      : AssetImage('assets/images/Group 171 (2).png')
                          as ImageProvider<Object>,
                  radius: 45,
                ),
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
              Text(
                '${userLocation ?? 'India'}',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      SingleChildScrollView(
        child: Container(
          width: double.infinity,
          // height: double.infinity,
          margin: const EdgeInsets.all(5),
          child: Column(
            children: [
              /// Tab Bar
              SizedBox(
                width: double.infinity,
                height: 80,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                              pageController.animateToPage(
                                current,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.ease,
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.all(5),
                              width: 100,
                              height: 55,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? Color.fromRGBO(17, 136, 68, 1)
                                    : Color.fromRGBO(235, 253, 242, 1),
                                borderRadius: current == index
                                    ? BorderRadius.circular(12)
                                    : BorderRadius.circular(7),
                                border: current == index
                                    ? Border.all(
                                        color: Color.fromRGBO(3, 134, 68, 1),
                                        width: 2.5)
                                    : null,
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      items[index],
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        color: current == index
                                            ? Colors.white
                                            : Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: current == index,
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(17, 136, 68, 1),
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      );
                    }),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  // margin: const EdgeInsets.only(top: 30),
                  width: double.infinity,
                  height: 900,
                  child: PageView.builder(
                    itemCount: cards.length,
                    controller: pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return cards[current];
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
