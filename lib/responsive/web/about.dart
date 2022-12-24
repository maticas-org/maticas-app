// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:responsivedashboard/Views/Welcome/components/welcome_image.dart';
import '../../constants.dart';
import '../../util/Menu.dart';

class AboutDesktop extends StatefulWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  State<AboutDesktop> createState() => _AboutDesktopState();
}

class _AboutDesktopState extends State<AboutDesktop> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: topBar,
      drawer: Menu(),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: const <Widget>[
                const WelcomeImage(),
                Center(
                  child: Text('''Sistema aplicacion-sensor, que permite conectar la informacion que proviene de los sensores
                 Escuela de Ingeniería, Ciencia y Tecnología - Universidad del Rosario
                                 '''),

                ),
              ],
            ),
          ),
        ),
      
    );
  }
}

