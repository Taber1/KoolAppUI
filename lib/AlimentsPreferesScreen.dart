import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'HomeScreen.dart';

class AlimentsPreferesScreen extends StatefulWidget {
  @override
  _AlimentsPreferesScreenState createState() => _AlimentsPreferesScreenState();
}

class _AlimentsPreferesScreenState extends State<AlimentsPreferesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.navigate_before,
              size: 40,
              color: Color(0xffffd400),
            )),
        title: Text(
          "Favoris",
          style: TextStyle(color: Color(0xffffd400), fontSize: 25),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(5),
          child: Icon(
            Icons.favorite,
            color: Color(0xffffd400),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aliments Preferes",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              elevation: 7,
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 75,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2017/08/12/18/59/snack-2635035_1280.jpg"))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Hosomaki Saumon",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "benkay sushi",
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "9.4",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Dt",
                        style: TextStyle(),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            elevation: 0,
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.all(0.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffffd400),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              alignment: Alignment.center,
              child: const Text(
                "Mes commandes",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
