import 'package:flutter/material.dart';

class ParametreScreen extends StatefulWidget {
  @override
  _ParametreScreenState createState() => _ParametreScreenState();
}

class _ParametreScreenState extends State<ParametreScreen> {
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
          "Parametres",
          style: TextStyle(color: Color(0xffffd400)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: 'Rechercher des restaurants ou des aliments',
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
