import 'package:flutter/material.dart';
import 'package:kool_app_ui/NumberConfirmation.dart';
import 'package:sms_autofill/sms_autofill.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Code?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("Entrez le code a 6 chiffres qui a ete envoye"),
            SizedBox(height: 2),
            Text("+21621345678"),
            Padding(
              padding: const EdgeInsets.only(
                  left: 100.0, right: 100, bottom: 20, top: 40),
              child: PinFieldAutoFill(
                codeLength: 6,
              ),
            ),
            RaisedButton(
              color: Colors.transparent,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NumberSuccessful()));
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
          ],
        ),
      ),
    );
  }
}
