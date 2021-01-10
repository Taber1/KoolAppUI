import 'package:flutter/material.dart';

class EachItemScreen extends StatefulWidget {
  @override
  _EachItemScreenState createState() => _EachItemScreenState();
}

class _EachItemScreenState extends State<EachItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xffffd400),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
