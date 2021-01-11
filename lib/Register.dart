import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/circle.png',
              alignment: Alignment.bottomRight,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  "J'ai un compte? Retour connexion",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0xffffd400)),
                height: MediaQuery.of(context).size.height * 0.47,
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
                      height: 100,
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
                                labelText: 'Nom complet',
                                hintText: "Nom et prenom",
                                labelStyle: TextStyle(
                                    color: Color(0xffffd400),
                                    fontWeight: FontWeight.bold),
                              )),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                  decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                labelText: 'Email',
                                hintText: "adresse email",
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
                                          borderRadius:
                                              BorderRadius.circular(5)),
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
                                          builder: (context) => HomeScreen()));
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
                                    "S'enregistrer",
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
                  ],
                ),
              ),
            ],
            clipBehavior: Clip.none,
          ),
        ],
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.only(bottom: 10.0),
      //   child:
      //)
    );
  }
}
