import 'package:flutter/material.dart';

class NumberScreen extends StatefulWidget {
  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo-kool-Jaune-png.png',
          color: Color(0xffffd400),
          height: 65,
        ),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.transparent,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NumberScreen()));
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
