import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class view4UI extends StatelessWidget {
  const view4UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            FontAwesomeIcons.line,
            size: MediaQuery.of(context).size.width * 0.75,
            color: const Color.fromARGB(255, 16, 167, 6),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Text(
            'Line',
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * 0.026),
          )
        ]),
      ),
    );
  }
}
