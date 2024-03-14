import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmDropDownUI extends StatefulWidget {
  const KmDropDownUI({super.key});

  @override
  State<KmDropDownUI> createState() => _KmDropDownUIState();
}

class _KmDropDownUIState extends State<KmDropDownUI> {
  List<String> _plList = ['JAVA', 'Python', 'C#', 'Go', 'Dart'];

  String _programming = 'JAVA';

  List<String> _uList = ['SAU', 'TU', 'CMU', 'CHULA', 'MU'];

  String _university = 'CMU';

  List<String> _fList = ['Pizza', 'KFC', 'Amazon', 'Fuji'];

  String _food = 'Pizza';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'แชร์ KM DropDown',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 5.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _programming,
                    items: _plList
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10.0),
                    onChanged: (onChanged) {
                      setState(() {
                        _programming = onChanged!;
                      });
                    },
                  ),
                ),
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton(
                  value: _university,
                  items: _uList
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  isExpanded: true,
                  onChanged: (onChanged) {
                    setState(() {
                      _university = onChanged!;
                    });
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 5.0,
                    ),
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(10.0)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      dropdownColor: Colors.red[100],
                      value: _food,
                      items: _fList
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    e,
                                  ),
                                  Text('<=>'),
                                  Icon(
                                    FontAwesomeIcons.bowlFood,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList(),
                      isExpanded: true,
                      onChanged: (onChanged) {
                        setState(() {
                          _food = onChanged!;
                        });
                      }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
