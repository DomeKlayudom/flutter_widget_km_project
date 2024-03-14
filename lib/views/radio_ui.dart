// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RadioUI extends StatefulWidget {
  const RadioUI({super.key});

  @override
  State<RadioUI> createState() => _RadioUIState();
}

class _RadioUIState extends State<RadioUI> {
  int pl = 2;
  String res = 'Pizza';
  String major = 'DTI';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'แชร์ KM RadioBox',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 1,
                  groupValue: pl,
                  onChanged: (paramValue) {
                    setState(() {
                      pl = paramValue!;
                    });
                  },
                ),
                Text('Python'),
                Radio(
                  value: 2,
                  groupValue: pl,
                  onChanged: (paramValue) {
                    setState(() {
                      pl = paramValue!;
                    });
                  },
                ),
                Text('JAVA'),
                Radio(
                  value: 3,
                  groupValue: pl,
                  onChanged: (paramValue) {
                    setState(() {
                      pl = paramValue!;
                    });
                  },
                ),
                Text('C#'),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'Pizza',
                  groupValue: res,
                  onChanged: (paramValue) {
                    setState(() {
                      res = paramValue!;
                    });
                  },
                ),
                Text('Pizza'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'KFC',
                  groupValue: res,
                  onChanged: (paramValue) {
                    setState(() {
                      res = paramValue!;
                    });
                  },
                ),
                Text('KFC'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'Amazon',
                  groupValue: res,
                  onChanged: (paramValue) {
                    setState(() {
                      res = paramValue!;
                    });
                  },
                ),
                Text('Amazon'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'Fuji',
                  groupValue: res,
                  onChanged: (paramValue) {
                    setState(() {
                      res = paramValue!;
                    });
                  },
                  activeColor: Colors.red,
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.red),
                ),
                Text('Fuji'),
              ],
            ),
            RadioListTile(
              value: 'DTI',
              groupValue: major,
              onChanged: (paramValue) {
                setState(() {
                  major = paramValue!;
                });
              },
              title: Text('สาขา DTI'),
              subtitle: Text('Technology Digital and Innovation'),
              secondary: Icon(
                FontAwesomeIcons.facebook,
              ),
              // controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              value: 'DM',
              groupValue: major,
              onChanged: (paramValue) {
                setState(() {
                  major = paramValue!;
                });
              },
              title: Text('สาขา DM'),
              subtitle: Text('Digital Media'),
              secondary: Icon(
                FontAwesomeIcons.googleDrive,
              ),
              // controlAffinity: ListTileControlAffinity.trailing,
            ),
          ],
        ),
      ),
    );
  }
}
