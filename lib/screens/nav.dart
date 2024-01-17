import 'package:flutter/material.dart';
import 'package:plantopia/screens/community.dart';
import 'package:plantopia/screens/game.dart';
import 'package:plantopia/screens/homescreen.dart';
import 'package:plantopia/screens/profile.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _index = 0;
  final screens = [
    const Home_Screen(),
    const Game(),
    Community(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: textTheme.bodySmall,
        unselectedLabelStyle: textTheme.bodySmall,
        elevation: 30,
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 17, 136, 68),
        unselectedItemColor: Color.fromARGB(255, 91, 90, 90),
        currentIndex: _index,
        onTap: (int newIndex) {
          setState(() {
            _index = newIndex;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            label: 'Game',
            icon: Icon(Icons.abc),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
