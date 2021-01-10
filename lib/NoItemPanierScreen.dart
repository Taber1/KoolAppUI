import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kool_app_ui/PanierScreen.dart';

class NoItemPanierScreen extends StatefulWidget {
  @override
  _NoItemPanierScreenState createState() => _NoItemPanierScreenState();
}

class _NoItemPanierScreenState extends State<NoItemPanierScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Panier",
          style: TextStyle(
              color: Color(0xffffd400),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.shoppingCart,
              size: 130,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Votre panier est vide",
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.transparent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PanierScreen()));
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
                width: MediaQuery.of(context).size.width * 0.45,
                alignment: Alignment.center,
                child: const Text(
                  'Commansez a explorer',
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
    );
  }
}
