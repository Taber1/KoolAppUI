import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          FontAwesomeIcons.userAlt,
          color: Color(0xffffd400),
        ),
        title: Image.asset(
          'assets/images/logo-kool-Jaune-png.png',
          color: Color(0xffffd400),
          height: 65,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                IconButton(
                  icon: Icon(FontAwesomeIcons.shoppingCart),
                  onPressed: () {},
                  iconSize: 28,
                ),
                CircleAvatar(
                  radius: 7,
                  backgroundColor: Color(0xffffd400),
                  child: Text(
                    "0",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RaisedButton(
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      height: MediaQuery.of(context).size.height * 0.035,
                      width: MediaQuery.of(context).size.width * 0.25,
                      alignment: Alignment.center,
                      child: const Text(
                        'A emporter',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  RaisedButton(
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffffd400),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      height: MediaQuery.of(context).size.height * 0.035,
                      width: MediaQuery.of(context).size.width * 0.25,
                      alignment: Alignment.center,
                      child: const Text(
                        'Livraison',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      "a Marsa Mode, P9, Tunisie",
                      style: TextStyle(color: Colors.grey),
                      softWrap: true,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Rechercher des restaurants ou des aliments',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        Icons.sort,
                        color: Color(0xffffd400),
                      ))),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 105,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(color: Color(0xffffd400)),
                          child: Center(
                            child: Text(
                              "$index",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 170,
                child: Swiper(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return new Container(
                      decoration: BoxDecoration(
                          color: Color(0xffffd400),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "$index",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    );
                  },
                  itemCount: 10,
                  viewportFraction: 0.8,
                  scale: 0.9,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class SmallHorizontalCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: Container(
//         height: 100,
//         width: 100,
//         decoration: BoxDecoration(color: Color(0xffffd400)),
//       ),
//     );
//   }
// }

// class BigHorizontalCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: CarouselSlider(
//           options: CarouselOptions(scrollDirection: Axis.horizontal),
//           items: [
//             Container(
//               // height: MediaQuery.of(context).size.height * 0.22,
//               width: MediaQuery.of(context).size.width * 0.8,
//               decoration: BoxDecoration(
//                   color: Color(0xffffd400),
//                   borderRadius: BorderRadius.circular(10)),
//             ),
//           ],
//         )
//         // Container(
//         //   // height: MediaQuery.of(context).size.height * 0.22,
//         //   width: MediaQuery.of(context).size.width * 0.8,
//         //   decoration: BoxDecoration(
//         //       color: Color(0xffffd400), borderRadius: BorderRadius.circular(10)),
//         // ),
//         );
//   }
// }
