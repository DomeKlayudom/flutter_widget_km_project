// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmButtonUI extends StatefulWidget {
  const KmButtonUI({super.key});

  @override
  State<KmButtonUI> createState() => _KmButtonUIState();
}

class _KmButtonUIState extends State<KmButtonUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('แชร์ KM Checkbox'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'DTI Click',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Image.asset(
                'assets/images/logo01.png',
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 41, 44, 29),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.2,
                    MediaQuery.of(context).size.height * 0.2,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.facebook,
              ),
              label: Text(
                'Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'DTI Click',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                side: BorderSide(
                  color: Colors.purple,
                  width: 5.0,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
              ),
              label: Text(
                'Facebook',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                side: BorderSide(
                  color: Colors.purple,
                  width: 2.0,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Create New Account?',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
