import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Green community",
          style: GoogleFonts.poppins(
            color: const Color.fromRGBO(91, 90, 90, 1),
            fontSize: 30,
            // fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(235, 253, 242, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    // margin: EdgeInsets.all(8),
                    width: 100,
                    height: 41,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(17, 136, 68, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Articles",
                            style: TextStyle(color: Colors.white),
                          ),
                        ])),
                Container(
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Donation",
                          style: TextStyle(color: Colors.green),
                        ),
                      ]),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(235, 253, 242, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // margin: EdgeInsets.all(8),
                  width: 100,
                  height: 41,
                  // color: Color.fromRGBO(17, 136, 68, 1),
                ),
                Container(
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Events",
                          style: TextStyle(color: Colors.green),
                        ),
                      ]),
                  // margin: EdgeInsets.all(8),
                  width: 100,
                  height: 41,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(235, 253, 242, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: 252,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(children: [
                Container(
                    child: Image.asset('assets/images/Rectangle 2.2.png')),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(3)),
                    Container(
                      margin: const EdgeInsets.all(3),
                      child: const Text(
                          'David Austin, who breathed life into the Rose is dead at 92'),
                    ),
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/Ellipse 3.1.png'),
                        ),
                        Column(
                          children: [
                            Text("Vidhi Gupta"),
                            Text(
                              "2024 . 01 . 01",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Spacer(),
                        Image(image: AssetImage('assets/images/leaf.png'))
                      ],
                    )
                  ],
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: 252,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(children: [
                Container(
                    child: Image.asset('assets/images/Rectangle 2.18.png')),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(3)),
                    Container(
                      margin: const EdgeInsets.all(3),
                      child: const Text(
                          'David Austin, who breathed life into the Rose is dead at 92'),
                    ),
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/Ellipse 3.1.png'),
                        ),
                        Column(
                          children: [
                            Text("Vidhi Gupta"),
                            Text(
                              "2024 . 01 . 01",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Spacer(),
                        Image(image: AssetImage('assets/images/leaf.png'))
                      ],
                    )
                  ],
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: 252,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(children: [
                Container(
                    child: Image.asset('assets/images/Rectangle 2.18.png')),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(3)),
                    Container(
                      margin: const EdgeInsets.all(3),
                      child: const Text(
                          'David Austin, who breathed life into the Rose is dead at 92'),
                    ),
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/Ellipse 3.1.png'),
                        ),
                        Column(
                          children: [
                            Text("Vidhi Gupta"),
                            Text(
                              "2024 . 01 . 01",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Spacer(),
                        Image(image: AssetImage('assets/images/leaf.png'))
                      ],
                    )
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your desired action when the button is pressed
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color.fromRGBO(17, 136, 68, 1),
        shape: CircleBorder(),
        elevation: 2.0, // Set the button background color
      ),
      floatingActionButtonLocation: _CustomFloatingActionButtonLocation(),
    );
  }
}

class _CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    // Adjust the vertical offset to position the button slightly above its default position
    return Offset(340, 560.0);
  }

  @override
  String toString() => 'FloatingActionButtonLocation.custom';
}
