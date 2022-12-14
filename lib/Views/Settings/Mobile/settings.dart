import 'package:flutter/material.dart';
import 'package:responsivedashboard/constants.dart';

import 'package:responsivedashboard/Widgets/dropdown.dart';
import 'package:responsivedashboard/Widgets/menu.dart';

class SettingsMobile extends StatefulWidget {
  const SettingsMobile({Key? key}) : super(key: key);

  @override
  State<SettingsMobile> createState() => _SettingsMobileState();
}

class _SettingsMobileState extends State<SettingsMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: topBar,
      drawer: const Menu(),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: const <Widget>[
                Text('Select the frecuency you want the data to be displayed'),
                Text(''),
                DropdownButtonExample()
              ],
            ),
          ),
        ),
      
    );
  }
}

