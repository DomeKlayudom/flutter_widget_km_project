// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_widget_km_project/views/subviews/view1_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view2_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view3_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view4_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view5_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class KmBnb02UI extends StatefulWidget {
  const KmBnb02UI({super.key});

  @override
  State<KmBnb02UI> createState() => _KmBnb02UIState();
}

class _KmBnb02UIState extends State<KmBnb02UI> {
  // ignore: prefer_final_fields
  List<Widget> _showView = [
    view1UI(),
    view2UI(),
    view3UI(),
    view4UI(),
    view5UI(),
  ];

  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'แชร์ KM BNB 02',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            (({_currentIndex = value}));
          });
        },
        items: [
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.facebookF),
              title: Text("Facebook"),
              selectedColor: const Color.fromARGB(255, 43, 118, 180),
              unselectedColor: Colors.grey),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.google),
              title: Text("Google"),
              selectedColor: const Color.fromARGB(255, 252, 54, 32),
              unselectedColor: Colors.grey),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.twitter),
              title: Text("Twister"),
              selectedColor: const Color.fromARGB(255, 64, 64, 64),
              unselectedColor: Colors.grey),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.line),
              title: Text("Line"),
              selectedColor: const Color.fromARGB(255, 16, 167, 6),
              unselectedColor: Colors.grey),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.linkedin),
              title: Text("linkedin"),
              selectedColor: const Color.fromARGB(255, 71, 172, 254),
              unselectedColor: Colors.grey),
        ],
      ),
    );
  }
}
