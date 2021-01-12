import 'package:flutter/material.dart';
import 'package:kool_app_ui/LoginScreen.dart';

import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'IBMPlexSans',
        primarySwatch: Colors.yellow,
      ),
      home: SplashScreen(),
    );
  }
}
