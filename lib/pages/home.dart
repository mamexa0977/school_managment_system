

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:school_managment_system/pages/navigations/2/2.dart';
import 'package:school_managment_system/pages/navigations/3/3.dart';


import 'navigations/1/1.dart';

class Home extends StatefulWidget {
  //  Home({super.key});
  // final String userToken;
  // final String userId;

  // Home({required this.userToken, required this.userId});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  
  // final String userToken;
  // final String userId;
  //  _HomeState({required this.userToken, required this.userId});

  List screens = [
    Page1(),
    Page2(),
    Page3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
