import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'HomeScreen.dart';

enum FilterOne { Livraison, Emporter }

class FilterDrawer extends StatefulWidget {
  @override
  _FilterDrawerState createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {
  FilterOne filterone = FilterOne.Livraison;
  bool ouvertOpt = false;
  bool toutOpt = false;
  bool sushis = false;
  bool pizzas = false;
  bool sandwichs = false;
  bool burgers = false;
  bool tacos = false;
  bool pates = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 0, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "effacer le filtre",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "livrason ou a emporter",
                style: TextStyle(
                    color: Color(0xffffd400),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.hamburger),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Livraison",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Radio(
                      value: FilterOne.Livraison,
                      groupValue: filterone,
                      onChanged: (value) {
                        setState(() {
                          filterone = value;
                        });
                      })
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.hamburger),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "A emporter",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 113,
                  ),
                  Radio(
                      value: FilterOne.Emporter,
                      groupValue: filterone,
                      onChanged: (value) {
                        setState(() {
                          filterone = value;
                        });
                      })
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Restaurants ouvert",
                style: TextStyle(
                    color: Color(0xffffd400),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Ouvert",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 197,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        ouvertOpt = !ouvertOpt;
                      });
                    },
                    child: ouvertOpt
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
              SizedBox(
                height: 40,
              ),
              Text(
                "Categories",
                style: TextStyle(
                    color: Color(0xffffd400),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Tout",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 215,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        toutOpt = !toutOpt;
                      });
                    },
                    child: toutOpt
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
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.bacon),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sushis",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 162,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        sushis = !sushis;
                      });
                    },
                    child: sushis
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
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.pizzaSlice),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Pizzas",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 162,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pizzas = !pizzas;
                      });
                    },
                    child: pizzas
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
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.cheese),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sandwichs",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        sandwichs = !sandwichs;
                      });
                    },
                    child: sandwichs
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
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.hamburger),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Burgers",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 153,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        burgers = !burgers;
                      });
                    },
                    child: burgers
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
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.hotdog),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Tacos",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 168,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tacos = !tacos;
                      });
                    },
                    child: tacos
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
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(Icons.fastfood),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Pates",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pates = !pates;
                      });
                    },
                    child: pates
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
              SizedBox(
                height: 30,
              ),
              Center(
                child: RaisedButton(
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffd400),
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                    ),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.45,
                    alignment: Alignment.center,
                    child: const Text(
                      "Page d'acceuil",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
