import 'package:flutter/material.dart';
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
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(40),
                  //     bottomRight: Radius.circular(40)),
                  color: Color(0xffffd400)),
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(70.0),
                child: Image.asset(
                  'assets/images/kool_black.png',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 120, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
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
                                    labelText: 'Mot de passe',
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
                                  borderRadius: BorderRadius.circular(10.0)),
                              padding: EdgeInsets.all(0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffffd400),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                alignment: Alignment.center,
                                child: const Text(
                                  "S'identifier",
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
                          "J'ai oublie mon mot de passe?",
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
                          "Je n'ai pas de compte",
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
                      "Page d'acceuil",
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
      // bottomNavigationBar: Container(
      //   height: 40,
      //   child: Padding(
      //     padding: const EdgeInsets.only(left: 10.0, right: 10),
      //     child: Column(
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Text("J'ai oublie mon mot de passe?"),
      //             Text("Je n'ai pas de compte")
      //           ],
      //         ),
      //         Text("Page d'acceuil")
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
