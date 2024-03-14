import 'package:flutter/material.dart';

class KmCheckboxUI3 extends StatefulWidget {
  const KmCheckboxUI3({super.key});

  @override
  State<KmCheckboxUI3> createState() => _KmCheckboxUIState();
}

class _KmCheckboxUIState extends State<KmCheckboxUI3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'แชร์ KM Checkbox',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
