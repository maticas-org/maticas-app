import 'package:flutter/material.dart';

import 'package:responsivedashboard/constants.dart';
import 'package:responsivedashboard/Views/Welcome/components/welcome_image.dart';
import 'package:responsivedashboard/Widgets/menu.dart';

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
      drawer: const Menu(),
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

