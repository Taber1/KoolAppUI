import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kool_app_ui/HomeScreen.dart';
import 'package:kool_app_ui/Register.dart';

import 'NumberScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: Color(0xffffd400)),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: EdgeInsets.only(top: 120, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 55,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/logo-kool-Jaune-png.png'))),
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  Material(
                    elevation: 10,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 40.0, bottom: 40.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextField(
                                decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              labelText: 'Email',
                              hintText: "Enter Email",
                              labelStyle: TextStyle(
                                  color: Color(0xffffd400),
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    labelText: 'Password',
                                    hintText: "******",
                                    labelStyle: TextStyle(
                                        color: Color(0xffffd400),
                                        fontWeight: FontWeight.bold),
                                    suffixIcon: Icon(Icons.remove_red_eye))),
                            SizedBox(
                              height: 30,
                            ),
                            RaisedButton(
                              color: Colors.transparent,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NumberScreen()));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              padding: EdgeInsets.all(0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffffd400),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                alignment: Alignment.center,
                                child: const Text(
                                  'LOGIN',
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
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: Text(
                          "Don't have an Account ?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                              fontStyle: FontStyle.italic),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      "Go to HomePage",
                      style: TextStyle(
                          color: Color(0xffffd400),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              ),
            ),
          ],
          clipBehavior: Clip.none,
        ),
      ),
    );
  }
}
