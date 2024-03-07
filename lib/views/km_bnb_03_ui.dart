// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_km_project/views/subviews/view1_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view2_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view3_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view4_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view5_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmBnb03UI extends StatefulWidget {
  const KmBnb03UI({super.key});

  @override
  State<KmBnb03UI> createState() => _KmBnb03UIState();
}

class _KmBnb03UIState extends State<KmBnb03UI> {
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
          'แชร์ KM BNB 03',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.green,
        activeColor: Colors.yellow,
        initialActiveIndex: 2,
        onTap: (value) {
          setState(() {
            (({_currentIndex = value}));
          });
        },
        items: [
          TabItem(
            icon: Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.blue,
            ),
            title: "Facebook",
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.google,
              color: Colors.amber,
            ),
            title: "google",
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.twitter,
              color: Colors.grey[400],
            ),
            title: "twitter",
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.line,
              color: Colors.green,
            ),
            title: "line",
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.linkedin,
              color: Colors.lightBlue,
            ),
            title: "linkedin",
          ),
        ],
      ),
    );
  }
}
