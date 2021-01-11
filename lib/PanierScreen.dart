import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kool_app_ui/orderConfirmation.dart';

class PanierScreen extends StatefulWidget {
  @override
  _PanierScreenState createState() => _PanierScreenState();
}

class _PanierScreenState extends State<PanierScreen> {
  bool espece = false;
  bool cheque = false;
  bool ticketResto = false;
  bool paiement = false;
  int _itemCount = 1;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Verifies votre quantite et cliquez sur Valider",
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2017/08/12/18/59/snack-2635035_1280.jpg')),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "spahetti fruit de mer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "10.0",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "Dt",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[350]),
                          borderRadius: BorderRadius.circular(40)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                      hintText: " code promo ?",
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      suffixIcon: Icon(FontAwesomeIcons.fileAlt))),
              SizedBox(height: 20),
              Divider(
                thickness: 1.1,
                color: Colors.grey[300],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Espece",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          espece = !espece;
                        });
                      },
                      child: espece
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
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cheque",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          cheque = !cheque;
                        });
                      },
                      child: cheque
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
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ticket Resto",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          ticketResto = !ticketResto;
                        });
                      },
                      child: ticketResto
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
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Paiement en ligne",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          paiement = !paiement;
                        });
                      },
                      child: paiement
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
                height: 10,
              ),
              Divider(
                thickness: 1.1,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pourboire pour le livreur",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
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
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1.1,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 175,
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
          padding: EdgeInsets.only(left: 25, right: 20, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "25",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "Dt",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
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
                    "Frais de livraison",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "4.0",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "Dt",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
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
                    "Tips",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "-",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Remise coupon",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "-",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              RaisedButton(
                color: Colors.transparent,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderConfirmationScreen()));
                },
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
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(""),
                        Text(""),
                        Text(
                          'Commander',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "29.0",
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
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
