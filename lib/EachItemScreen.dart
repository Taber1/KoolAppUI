import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EachItemScreen extends StatefulWidget {
  @override
  _EachItemScreenState createState() => _EachItemScreenState();
}

class _EachItemScreenState extends State<EachItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.37,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2017/08/12/18/59/snack-2635035_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [Text("Nigiri Saumon")],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25,
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color(0xffffd400),
                  ),
                ),
                Text(
                  "Nigiri Sauman",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25,
                  child: Icon(
                    FontAwesomeIcons.shoppingCart,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quantite",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
