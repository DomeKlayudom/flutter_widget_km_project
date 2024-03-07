// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_widget_km_project/views/subviews/view1_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view2_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view3_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view4_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view5_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmBnb01UI extends StatefulWidget {
  const KmBnb01UI({super.key});

  @override
  State<KmBnb01UI> createState() => _KmBnb01UIState();
}

class _KmBnb01UIState extends State<KmBnb01UI> {
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
          'แชร์ KM BNB 01',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.yellow,
        onTap: (value) {
          setState(() {
            (({_currentIndex = value}));
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.facebookF),
              label: "Facebook",
              backgroundColor: const Color.fromARGB(255, 43, 118, 180)),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.google),
              label: "google",
              backgroundColor: const Color.fromARGB(255, 252, 54, 32)),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.twitter),
              label: "twitter",
              backgroundColor: const Color.fromARGB(255, 64, 64, 64)),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.line),
              label: "line",
              backgroundColor: const Color.fromARGB(255, 16, 167, 6)),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.linkedin),
              label: "linkedin",
              backgroundColor: const Color.fromARGB(255, 71, 172, 254)),
        ],
      ),
    );
  }
}
