import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kool_app_ui/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.yellowAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/logo-kool-Jaune-png.png'))),
                    )),
              ),
              Padding(padding: EdgeInsets.only(top: 100)),
              CircularProgressIndicator(
                backgroundColor: Colors.black45,
              )
            ],
          )
        ],
      ),
    );
  }
}
