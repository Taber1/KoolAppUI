import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffd400),
        title: Image.asset(
          'assets/images/logo-kool-Jaune-png.png',
          color: Colors.black,
          height: 65,
        ),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.transparent,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          padding: EdgeInsets.all(0.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffffd400),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.8,
            alignment: Alignment.center,
            child: const Text(
              'Valider',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
