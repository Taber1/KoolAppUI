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
                  title: RichText(
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
                  leading: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Stack(
                        alignment: Alignment.centerLeft,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            radius: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Image.asset(
                              'assets/images/logo-kool-Jaune-png.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fitHeight,
                            ),
                          )
                        ]),
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
        child: Text("HOME"),
      ),
    );
  }
}
