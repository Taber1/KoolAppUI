import 'package:flutter/material.dart';
import 'package:kool_app_ui/HomeScreen.dart';
import 'package:kool_app_ui/NotificationScreen.dart';

import 'AlimentsPreferesScreen.dart';
import 'LoginScreen.dart';
import 'ParametresScreen.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Mon compte",
          style: TextStyle(
              color: Color(0xffffd400),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            title: Text(
              "Acceuil",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationScreen()));
            },
            title: Text(
              "Les notifications",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Mes commandes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AlimentsPreferesScreen()));
            },
            title: Text(
              "Aliments Preferes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Adresse de livraison",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Support d'aide",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ParametreScreen()));
            },
            title: Text(
              "Parametres",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Signed Out Successful")));
            },
            title: Text(
              "Deconnexion",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
