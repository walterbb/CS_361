import 'package:flutter/material.dart';
import 'dash.dart';
import 'search.dart';
import 'creator.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> pages = [
    Dash(),
    Search(),
    Creator(),
    Profile(),
  ];

  int currentIndex = 0;

  double iconSize = 32.0;
  double iconBox = 52.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        backgroundColor: Theme.of(context).cardColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 12.0,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: iconBox,
              child: Icon(
                Icons.dashboard_rounded,
                size: iconSize,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: iconBox,
              child: Icon(
                Icons.search_rounded,
                size: iconSize,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: iconBox,
              child: Icon(
                Icons.create_rounded,
                size: iconSize,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: iconBox,
              child: Icon(
                Icons.person_rounded,
                size: iconSize,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
