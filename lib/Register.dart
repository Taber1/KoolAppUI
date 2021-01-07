import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                              labelText: 'Full Name',
                              hintText: "First Name and Last Name",
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
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
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
                                  'REGISTER',
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
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: Text(
                      "Already have an Account ?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey[700],
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
