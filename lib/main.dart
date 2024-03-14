import 'package:flutter/material.dart';
import 'package:flutter_widget_km_project/views/km_bnb_01_ui.dart';
import 'package:flutter_widget_km_project/views/km_bnb_02_ui.dart';
import 'package:flutter_widget_km_project/views/km_bnb_03_ui.dart';
import 'package:flutter_widget_km_project/views/km_buntton_ui.dart';
import 'package:flutter_widget_km_project/views/km_checkbox_ui.dart';
import 'package:flutter_widget_km_project/views/km_dropdown_ui.dart';
import 'package:flutter_widget_km_project/views/radio_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(
    MainApp(),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KmDropDownUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
