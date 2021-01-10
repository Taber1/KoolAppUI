import 'package:flutter/material.dart';

class ParametreScreen extends StatefulWidget {
  @override
  _ParametreScreenState createState() => _ParametreScreenState();
}

class _ParametreScreenState extends State<ParametreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Parametres",
          style: TextStyle(color: Color(0xffffd400)),
        ),
      ),
    );
  }
}
