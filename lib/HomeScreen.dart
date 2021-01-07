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
          preferredSize: Size.fromHeight(170.0),
          child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(5.0),
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
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                  title: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'DOC ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'FIST',
                            style: TextStyle(
                                color: Colors.deepOrangeAccent[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  leading: Stack(
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        Positioned(
                          bottom: 6,
                          right: 1,
                          child: CircleAvatar(
                              child: IconButton(
                            icon: Icon(Icons.person),
                            color: Colors.indigo,
                            onPressed: () {
                              // _scaffoldKey.currentState.openDrawer();
                            },
                          )),
                        ),
                        Positioned(
                          bottom: 1,
                          right: 1,
                          child: CircleAvatar(
                              radius: 8,
                              child: Icon(
                                Icons.menu,
                                size: 10,
                              )),
                        ),
                      ]),
                  backgroundColor: Color(0xffffd400),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => location()));
                                },
                                child: Icon(Icons.add_location)),
                            SizedBox(width: 0),
                            InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => location()));
                                },
                                child: Text("Karachi")),
                            InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => location()));
                                },
                                child: Icon(Icons.arrow_drop_down))
                          ],
                        ),
                        SizedBox(height: 10),
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
