import 'package:flutter/material.dart';
import 'package:flutter_web/1114/my_Tab.dart';

// https://dribbble.com/shots/8112616/attachments/553295?mode=media
// https://medium.com/flutter-community/how-to-fix-material-icons-for-flutter-web-hummingbird-6e58d6b7269c

class MoodFabrics extends StatefulWidget {
  @override
  _MoodFabricsState createState() => _MoodFabricsState();
}

class _MoodFabricsState extends State<MoodFabrics> {
  int _currentIndex = 0;

  _onPressed(int num){
    setState(() {
      _currentIndex = num;
      print("_currentIndex = $_currentIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.all(80.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            // appbar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              height: 40.0,
              child: Row(
                children: <Widget>[
                  // title
                  Text("MF",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                    fontFamily: "Butler-Medium",
                    fontWeight: FontWeight.w600),
                  ),

                  // tab
                  Container(
                    width: 400.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Apparel",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontFamily: "Butler-Medium",
                          fontWeight: FontWeight.w600),
                        ),

                        Text("Home Decor",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontFamily: "Butler-Medium",
                              fontWeight: FontWeight.w600),
                        ),

                        Text("Discount Fabric",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontFamily: "Butler-Medium",
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),

                  Spacer(),

                  // action
                  Container(
                    width: 120.0,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.search, size: 20.0, color: Colors.black),

                        SizedBox(width: 8.0),

                        Text("Search",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontFamily: "Butler-Medium",
                            fontWeight: FontWeight.w600),
                        ),

                        Spacer(),

                        Icon(Icons.shopping_cart, size: 20.0, color: Colors.black),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // divider
            Container(
              height: 1.0,
              color: Colors.black,
            ),

            //
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                margin: EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0, bottom: 100.0),
                child: Column(
                  children: <Widget>[
                    // text
                    Row(
                      children: <Widget>[
                        Icon(Icons.keyboard_arrow_left, size: 20.0, color: Colors.black),

                        Text("Back to all products",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontFamily: "Butler-Medium",
                          fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),

                    SizedBox(height: 16.0),
                    // tab
                    Flexible(
                      fit: FlexFit.tight,
                      child: Row(
                        children: <Widget>[
                          // tabbar
                         Flexible(
                           flex: 1,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: <Widget>[
                               MyTab(
                                   image: itemlist[0].image,
                                   title: itemlist[0].text,
                                 onPressed: (){
                                     _onPressed(0);
                                 },
                               ),

                               MyTab(
                                 image: itemlist[1].image,
                                 title: itemlist[1].text,
                                 onPressed: (){
                                   _onPressed(1);
                                 },
                               ),

                               MyTab(
                                 image: itemlist[2].image,
                                 title: itemlist[2].text,
                                 onPressed: (){
                                   _onPressed(2);
                                 },
                               ),
                             ],
                           ),
                         ),

                          // tabbar view
                          Flexible(
                            flex: 7,
                            child: Row(
                              children: <Widget>[
                                // image
                                Flexible(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 60.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(itemlist[_currentIndex].image),
                                        fit: BoxFit.fill,
                                      )
                                    ),
                                  ),
                                ),

                                // text
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      // Text: new in our store
                                      Text("New in our store!".toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black54,
                                        fontFamily: "Butler-Medium",
                                        fontWeight: FontWeight.w600),
                                      ),

                                      // item title
                                      Text(itemlist[_currentIndex].text,
                                      style: TextStyle(
                                        fontSize: 32.0,
                                        color: Colors.black,
                                        fontFamily: "Butler-Medium",
                                        fontWeight: FontWeight.w400),
                                      ),

                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            // product
                                            Text("Product : PV1000-140",
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.black54,
                                                  fontFamily: "Butler-Medium",
                                                  fontWeight: FontWeight.w400),
                                            ),

                                            SizedBox(height: 4.0),

                                            // price / yard
                                            Text("\$29.99 / Yard",
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.black,
                                                  fontFamily: "Butler-Medium",
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // add to card
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 24.0),
                                        height: 52.0,
                                        child: Column(
                                          children: <Widget>[
                                            Flexible(
                                              child: Row(
                                                children: <Widget>[
                                                  SizedBox(width: 65.0),

                                                  Text("Yards",
                                                  style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.black,
                                                    fontFamily: "Butler-Medium",
                                                    fontWeight: FontWeight.w400),
                                                  ),

                                                  SizedBox(width: 40.0),

                                                  Text("Half Yards",
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.black,
                                                        fontFamily: "Butler-Medium",
                                                        fontWeight: FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Flexible(
                                              flex: 2,
                                              child: Row(
                                                children: <Widget>[
                                                  Text("QTY.",
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.black,
                                                    fontFamily: "Butler-Medium",
                                                    fontWeight: FontWeight.w400),
                                                  ),

                                                  Container(
                                                    margin: EdgeInsets.only(left: 16.0),
                                                    padding: EdgeInsets.only(right: 6.0),
                                                    width: 64.0,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1.0)
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: <Widget>[
                                                        Icon(
                                                            Icons.arrow_drop_up,
                                                            size: 8.0,
                                                            color: Colors.black),

                                                        Icon(
                                                            Icons.arrow_drop_down,
                                                            size: 8.0,
                                                            color: Colors.black)
                                                      ],
                                                    ),
                                                  ),

                                                  Icon(Icons.add, size: 16.0, color: Colors.black),

                                                  Container(
                                                    margin: EdgeInsets.only(right: 16.0),
                                                    padding: EdgeInsets.only(right: 6.0),
                                                    width: 64.0,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black,
                                                            width: 1.0)
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: <Widget>[
                                                        Icon(
                                                            Icons.arrow_drop_up,
                                                            size: 8.0,
                                                            color: Colors.black),

                                                        Icon(
                                                            Icons.arrow_drop_down,
                                                            size: 8.0,
                                                            color: Colors.black)
                                                      ],
                                                    ),
                                                  ),


                                                  Container(
                                                    width: 100.0,
                                                    color: Colors.black,
                                                    child: Center(
                                                        child: Text("Add to Cart",
                                                        style: TextStyle(
                                                          fontSize: 12.0,
                                                          color: Colors.white,
                                                          fontFamily: "Butler-Medium",
                                                          fontWeight: FontWeight.w200),
                                                        ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            //
                                            Text("7-14 business days required for this product",
                                              style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black54,
                                                  fontFamily: "Butler-Medium",
                                                  fontWeight: FontWeight.w400),
                                            ),

                                            // divider
                                            Container(
                                              margin: EdgeInsets.symmetric(vertical: 8.0),
                                              height: 1.0,
                                              color: Colors.grey,
                                            ),

                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.check_circle, size: 12.0, color: Colors.black),

                                                SizedBox(width: 4.0),

                                                Text("You will earn 67 Mood Points for purchasing this product",
                                                  style: TextStyle(
                                                      fontSize: 10.0,
                                                      color: Colors.black,
                                                      fontFamily: "Butler-Medium",
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Itemlist {
  String image;
  String text;

  Itemlist({this.image, this.text});
}

List<Itemlist> itemlist = [
  Itemlist(image: "https://cdn.pixabay.com/photo/2019/09/11/22/29/leaf-4470075__340.jpg",
      text: "Pair of Olive Green\nVelvet Curtains,\nBedroom Velvet\nCurtains",
  ),
  Itemlist(image: "https://cdn.pixabay.com/photo/2019/11/10/16/47/nature-4616282__340.jpg",
      text: "Pair of Olive Green\nVelvet Curtains,\nBedroom Velvet\nCurtains2",
  ),
  Itemlist(image: "https://cdn.pixabay.com/photo/2019/11/07/17/07/universe-4609408__340.jpg",
      text: "Pair of Olive Green\nVelvet Curtains,\nBedroom Velvet\nCurtains3",
  ),
];




















