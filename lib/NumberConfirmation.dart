import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class NumberSuccessful extends StatefulWidget {
  @override
  _NumberSuccessfulState createState() => _NumberSuccessfulState();
}

class _NumberSuccessfulState extends State<NumberSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Color(0xffffd400),
                size: 200,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "votre numero a verivie avec succes",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              )
            ]),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            elevation: 0,
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.all(0.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffffd400),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              alignment: Alignment.center,
              child: const Text(
                "Page d'acceuil",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
