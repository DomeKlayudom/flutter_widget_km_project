// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmCheckboxUI extends StatefulWidget {
  const KmCheckboxUI({super.key});

  @override
  State<KmCheckboxUI> createState() => _KmCheckboxUIState();
}

class _KmCheckboxUIState extends State<KmCheckboxUI> {
  bool _chk01 = false;

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
          children: [
            Checkbox(
              value: _chk01,
              onChanged: (paramValue) {
                setState(
                  () {
                    _chk01 = paramValue!;
                  },
                );
              },
              activeColor: Colors.yellow,
              checkColor: Colors.red,
              hoverColor: Colors.blue,
              side: BorderSide(color: Colors.green, width: 1),
            ),
            SizedBox(
              height: 20,
            ),
            CheckboxListTile(
              value: true,
              onChanged: (paramValie) {},
              title: Text(
                'JAVA',
              ),
              secondary: Icon(
                FontAwesomeIcons.java,
                color: Colors.red,
              ),
              controlAffinity: ListTileControlAffinity.trailing,
              subtitle: Text('Programming'),
              activeColor: Colors.orange,
              checkColor: Colors.purple,
              side: BorderSide(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
