import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class view1UI extends StatelessWidget {
  const view1UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            FontAwesomeIcons.facebookF,
            size: MediaQuery.of(context).size.width * 0.75,
            color: const Color.fromARGB(255, 43, 118, 180),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Text(
            'Facebook',
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * 0.026),
          )
        ]),
      ),
    );
  }
}
