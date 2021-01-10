import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlimentsPreferesScreen extends StatefulWidget {
  @override
  _AlimentsPreferesScreenState createState() => _AlimentsPreferesScreenState();
}

class _AlimentsPreferesScreenState extends State<AlimentsPreferesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.navigate_before,
              size: 40,
              color: Color(0xffffd400),
            )),
        title: Text(
          "Favoris",
          style: TextStyle(color: Color(0xffffd400), fontSize: 25),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(5),
          child: Icon(
            Icons.favorite,
            color: Color(0xffffd400),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 10),
        child: Column(
          children: [
            Text(
              "Aliments Preferes",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
