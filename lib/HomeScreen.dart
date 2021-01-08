import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          FontAwesomeIcons.userAlt,
          color: Color(0xffffd400),
        ),
        title: Image.asset(
          'assets/images/logo-kool-Jaune-png.png',
          color: Color(0xffffd400),
          height: 65,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                IconButton(
                  icon: Icon(FontAwesomeIcons.shoppingCart),
                  onPressed: () {},
                  iconSize: 28,
                ),
                CircleAvatar(
                  radius: 7,
                  backgroundColor: Color(0xffffd400),
                  child: Text(
                    "0",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                InkWell(
                  child: Icon(
                    FontAwesomeIcons.shoppingCart,
                    size: 30,
                  ),
                  onTap: () {},
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffffd400),
                  child: Text(
                    "0",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
