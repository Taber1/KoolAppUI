import 'package:flutter/material.dart';

class NumberSuccessful extends StatefulWidget {
  @override
  _NumberSuccessfulState createState() => _NumberSuccessfulState();
}

class _NumberSuccessfulState extends State<NumberSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: RaisedButton(
        color: Colors.transparent,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NumberScreen()));
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        padding: EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffffd400),
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.9,
          alignment: Alignment.center,
          child: const Text(
            "Page d'acceuil",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
