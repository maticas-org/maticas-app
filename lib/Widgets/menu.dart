import 'package:flutter/material.dart';
import 'package:responsivedashboard/DataProvider/Storage/database.dart';
import '../constants.dart';
import 'button_menu.dart';

//API connection
import 'package:provider/provider.dart';
import 'package:responsivedashboard/DataProvider/data_provider.dart';
import 'package:responsivedashboard/DataProvider/ApiClient/api_client.dart';


class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    AppApiClient client =  Provider.of<DataProvider>(context).apiClient;
    ClientDatabase db =  Provider.of<DataProvider>(context).db;

    return Drawer(
      backgroundColor: menuColorBackgr,
      elevation: 0,
      child: Column(
        children: [
          InkWell(
              onTap: (){Navigator.of(context).pushNamed('/home');},
              child:const DrawerHeader(
              child: null,
              decoration: BoxDecoration(
                      color: menuColorBackgr,
                      image: DecorationImage(
                        image: AssetImage("assets/images/logoApp.png"))
              )
              )
          ),
          
          ButtonMenu(icono: Icons.add_task, texto:'E X P O R T   S E L E C T E D\nD A T A ', answer: (){
            //api.getSelectedAVasJson(user, token, beginDate, endDate);
          }), 
          ButtonMenu(icono: Icons.file_download, texto:'E X P O R T   A L L  D A T A ', answer: (){
            //api.getAllAVasJson(user, token);
            }),

          ButtonMenu(icono: Icons.settings, texto:'S E T T I N G S', answer: (){
            Navigator.of(context).pushNamed('/settings');
          }),

          ButtonMenu(icono: Icons.info, texto:'A B O U T', answer: (){
            Navigator.of(context).pushNamed('/about');
          }),

          ButtonMenu(icono: Icons.logout, texto:'L O G O U T', answer:()async{
            client.logOut();
            await db.logOut();
            Navigator.of(context).pushNamed('/');
          }),
        ],
      ),
    );
  }
}

