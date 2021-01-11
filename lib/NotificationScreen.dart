import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Les notifications",
          style: TextStyle(
              color: Color(0xffffd400),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(FontAwesomeIcons.shoppingCart), onPressed: () {})
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/circle.png',
              alignment: Alignment.bottomRight,
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Les notifications",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.radio_button_checked,
                        color: Color(0xffffd400), size: 22),
                    SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Le statut de la commande a change",
                            style: TextStyle(
                                color: Color(0xffffd400),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Votre commande #163 est prete et en attente de livreur",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Benkay Sushi",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "2020-12-28 - 15:58",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.radio_button_checked,
                        color: Colors.grey, size: 22),
                    SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Le statut de la commande a change",
                            style: TextStyle(
                                color: Color(0xffffd400),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Votre commande #163 est prete et en attente de livreur",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Benkay Sushi",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "2020-12-28 - 15:58",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.radio_button_checked,
                        color: Colors.grey, size: 22),
                    SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Le statut de la commande a change",
                            style: TextStyle(
                                color: Color(0xffffd400),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Votre commande #163 est prete et en attente de livreur",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Benkay Sushi",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "2020-12-28 - 15:58",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.radio_button_checked,
                        color: Colors.grey, size: 22),
                    SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Le statut de la commande a change",
                            style: TextStyle(
                                color: Color(0xffffd400),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Votre commande #163 est prete et en attente de livreur",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Benkay Sushi",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "2020-12-28 - 15:58",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.radio_button_checked,
                        color: Colors.grey, size: 22),
                    SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Le statut de la commande a change",
                            style: TextStyle(
                                color: Color(0xffffd400),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Votre commande #163 est prete et en attente de livreur",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Benkay Sushi",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "2020-12-28 - 15:58",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
