import 'package:bottom_nav_bar/search.dart';
import 'package:bottom_nav_bar/test.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';
class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _homepageState();
}

class _homepageState extends State<nav> {
  int _currrentIndex = 0;
  List<Widget> tabs = [
    home(),
  Search(),
    Center(
      child: Text("BUTLER"),
    ),
    Center(
      child: Text("ORDER"),
    ),
    Center(
      child: Text("PROFILE"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs.elementAt(_currrentIndex),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currrentIndex,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xff0fb48c),
        selectedIconTheme: IconThemeData(size: 30,),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.room_service_outlined),
            label: ("Butler"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: ("Order"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("Profile"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currrentIndex = index;
          });
        },
      ),
    );
  }
}
