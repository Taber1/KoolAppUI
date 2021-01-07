import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:kool_app_ui/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Stack(
          fit: StackFit.passthrough,
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
            Column(
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
                            labelStyle: TextStyle(color: Color(0xffffd400)),
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                              decoration: InputDecoration(
                                  // enabledBorder: OutlineInputBorder(
                                  //     borderSide:
                                  //         BorderSide(color: Colors.grey),
                                  //     borderRadius: BorderRadius.circular(5)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  labelText: 'Password',
                                  hintText: "******",
                                  labelStyle:
                                      TextStyle(color: Color(0xffffd400)),
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
                              height: MediaQuery.of(context).size.height * 0.06,
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
                  height: 30,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Text("Forget Password"),
                    )
                  ],
                )
              ],
            ),
          ],
          clipBehavior: Clip.none,
        ),
      ),
    ));
  }
}
