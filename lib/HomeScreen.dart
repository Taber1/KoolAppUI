import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kool_app_ui/DrawerScreen.dart';
import 'package:kool_app_ui/EachItemScreen.dart';
import 'EndDrawerScreen.dart';
import 'NoItemPanierScreen.dart';
import 'itemList.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DrawerScreen()));
          },
          icon: Icon(FontAwesomeIcons.userAlt),
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NoItemPanierScreen()));
                  },
                  iconSize: 28,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NoItemPanierScreen()));
                  },
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Color(0xffffd400),
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      endDrawer: FilterDrawer(),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      suffixIcon: IconButton(
                        onPressed: () {
                          _key.currentState.openEndDrawer();
                        },
                        icon: Icon(Icons.sort),
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
                  duration: 1,
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
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Livraison la plus repide",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: item.length,
                  itemBuilder: (BuildContext context, int index) {
                    return EachItemCard(
                      prod_name: item[index]['name'],
                      prod_picture: item[index]['picture'],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EachItemCard extends StatelessWidget {
  final prod_name;
  final prod_picture;
  EachItemCard({this.prod_name, this.prod_picture});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EachItemScreen(
                      prod_name: prod_name,
                      prod_picture: prod_picture,
                    )));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.38,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(prod_picture))),
            ),
            SizedBox(
              height: 10,
            ),
            Text('$prod_name',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
            Flexible(
                child: Text(
              " Retrouvez toutes vos envies dans nos sushis. BENKAY est une chaine de r",
              softWrap: true,
              style: TextStyle(color: Colors.grey),
            )),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Icon(
                  Icons.star_outline,
                  color: Color(0xffffd400),
                ),
                Icon(
                  Icons.star_outline,
                  color: Color(0xffffd400),
                ),
                Icon(
                  Icons.star_outline,
                  color: Color(0xffffd400),
                ),
                Icon(
                  Icons.star_outline,
                  color: Color(0xffffd400),
                ),
                Icon(
                  Icons.star_outline,
                  color: Color(0xffffd400),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              " 1.00 Km",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )
          ],
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
