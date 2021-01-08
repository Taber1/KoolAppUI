import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(140.0),
          child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 4.0,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                AppBar(
                  elevation: 0,
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.white,
                  // backgroundColor: Color(0xffffd400),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey[200],
                          ),
                          Image.asset(
                            'assets/images/logo-kool-Jaune-png.png',
                            height: 50,
                          )
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'KOOL',
                                style: TextStyle(
                                    color: Color(0xffffd400),
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' APP',
                                style: TextStyle(
                                    color: Colors.deepOrangeAccent[700],
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => search()));
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey[300]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              prefixIcon: Icon(Icons.search),
                              hintText:
                                  'Doctors, Hospitals, Specialist, Services, Dispenceries',
                            ))
                      ]),
                )
              ],
            ),
          )),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[200],
            ),
            Image.asset(
              'assets/images/logo-kool-Jaune-png.png',
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
