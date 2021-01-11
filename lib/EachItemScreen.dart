import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EachItemScreen extends StatefulWidget {
  @override
  _EachItemScreenState createState() => _EachItemScreenState();
}

class _EachItemScreenState extends State<EachItemScreen> {
  bool supplement = false;
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
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nigiri Saumon",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "5.6",
                                style: TextStyle(
                                    color: Color(0xffffd400),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "Dt",
                                style: TextStyle(
                                  color: Color(0xffffd400),
                                  fontSize: 22,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Benkay Sushi",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "7.5DT",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                            ),
                            height: 30,
                            width: 100,
                            alignment: Alignment.center,
                            child: RaisedButton(
                              color: Colors.green,
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: const Text(
                                'Livrable',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                            ),
                            height: 30,
                            width: 80,
                            alignment: Alignment.center,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: const Text(
                                'paire',
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
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: Text(
                        "Une boule de riz vinaigre sur laquelle on pose delicatement une fine tranche da saumon",
                        softWrap: true,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Extras",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Selectionnez des extras pour les ajouter a la nourriture",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("supplement",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 25, bottom: 25, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Saumon + 10.0DT",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  supplement = !supplement;
                                });
                              },
                              child: supplement
                                  ? Icon(
                                      Icons.radio_button_checked,
                                      color: Color(0xffffd400),
                                      size: 20,
                                    )
                                  : Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.grey[700],
                                      size: 21.5,
                                    ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text("Ingredients",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      Text("Saumon, riz vinaigre",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      Text("Nutrition",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.lightGreenAccent,
                              ),
                              height: 70,
                              width: 75,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Glucides",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "19.9",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.lightGreenAccent,
                              ),
                              height: 70,
                              width: 75,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Proteines",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "40.0",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.lightGreenAccent,
                              ),
                              height: 70,
                              width: 75,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "calories",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "10.4",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.lightGreenAccent,
                              ),
                              height: 70,
                              width: 75,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Liqides",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "0.002",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
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
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      iconSize: 30,
                      color: Color(0xffffd400),
                    )),
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
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
              ),
            ],
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
                        border: Border.all(width: 2, color: Color(0xffffd400)),
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 70,
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xffffd400),
                      )),
                  RaisedButton(
                    color: Colors.transparent,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Color(0xffffd400)),
                        color: Colors.yellow,
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
