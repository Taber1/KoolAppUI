import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EachItemScreen extends StatefulWidget {
  @override
  _EachItemScreenState createState() => _EachItemScreenState();
}

class _EachItemScreenState extends State<EachItemScreen> {
  int _itemCount = 1;
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
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10, top: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quantite",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.remove_circle_outline,
                          size: 30,
                        ),
                        onPressed: () => setState(() {
                          _itemCount == 1 ? null : _itemCount--;
                        }),
                      ),
                      Text(
                        _itemCount.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: 30,
                          ),
                          onPressed: () => setState(() => _itemCount++))
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.red,
                    ),
                    height: 60,
                    width: 70,
                    child: Center(
                        child: Container(
                      height: 20,
                      width: 20,
                    )),
                  ),
                  RaisedButton(
                    color: Colors.transparent,
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => NumberScreen()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffffd400),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.75,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Ajouter au Panier',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "10.0",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "DT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
