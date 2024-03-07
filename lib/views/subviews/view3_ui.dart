import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class view3UI extends StatelessWidget {
  const view3UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            FontAwesomeIcons.twitter,
            size: MediaQuery.of(context).size.width * 0.75,
            color: const Color.fromARGB(255, 64, 64, 64),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Text(
            'Twitter',
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * 0.026),
          )
        ]),
      ),
    );
  }
}
