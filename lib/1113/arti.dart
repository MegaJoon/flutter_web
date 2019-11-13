import 'package:flutter/material.dart';

// https://dribbble.com/shots/8172529-Arti/attachments/570410?mode=media

class Arti extends StatefulWidget {
  @override
  _ArtiState createState() => _ArtiState();
}

class _ArtiState extends State<Arti> {
  Color _backgroundColor = Color.fromRGBO(255, 210, 60, 1);

  String title = "Pablo Picasso";

  String _image = "guernica.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(80.0),
        color: Colors.grey[200],
        child: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              // top color contaienr
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 200.0,
                  color: _backgroundColor,
                ),
              ),

              // appbar
              Positioned(
                top: 24.0,
                left: 24.0,
                right: 24.0,
                child: Container(
                  height: 48.0,
                  child: Row(
                    children: <Widget>[
                      Text("Arti",
                      style: TextStyle(fontSize: 24.0,
                          color: Colors.black,
                          fontFamily: "Butler-Medium"),
                      ),

                      Spacer(),

                      // tabbar
                      Container(
                        height: 48.0,
                        width: 300.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Home",
                            style: TextStyle(fontSize: 16.0,
                            color: Colors.black,
                            fontFamily: "Butler-Medium"),
                            ),

                            Text("About us",
                              style: TextStyle(fontSize: 16.0,
                                  color: Colors.black,
                                  fontFamily: "Butler-Medium"),
                            ),

                            Text("Artist",
                              style: TextStyle(fontSize: 16.0,
                                  color: Colors.black,
                                  fontFamily: "Butler-Medium"),
                            ),

                            Text("Artworks",
                              style: TextStyle(fontSize: 16.0,
                                  color: Colors.black,
                                  fontFamily: "Butler-Medium"),
                            ),
                          ],
                        ),
                      ),

                      Spacer(),

                      Icon(Icons.sort, size: 32.0, color: Colors.black),
                    ],
                  ),
                ),
              ),

              // title
              Positioned(
                top: 150.0,
                left: 24.0,
                right: 24.0,
                child: Container(
                  height: 120.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.arrow_back, size: 24.0, color: Colors.black),

                      Spacer(),

                      Column(
                        children: <Widget>[
                          // title
                          Text(title.toUpperCase(),
                            style: TextStyle(
                                fontSize: 80.0,
                                color: Colors.black,
                                fontFamily: "Butler-Medium",
                                fontWeight: FontWeight.bold,
                                height: 1.0),
                          ),

                          // 1881 - 1973
                          Text("(1881-1973)",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                            fontFamily: "Butler-Medium",
                            fontWeight: FontWeight.w400,
                          height: 2.0),
                          ),
                        ],
                      ),

                      Spacer(),

                      Icon(Icons.arrow_forward, size: 24.0, color: Colors.black),
                    ],
                  ),
                ),
              ),

              // main view
              Positioned(
                bottom: 24.0,
                left: 24.0,
                right: 24.0,
                child: Container(
                  height: 300.0,
                  child: Row(
                    children: <Widget>[
                      // tabbar
                      Container(
                        padding: EdgeInsets.only(left: 24.0, bottom: 24.0),
                        width: 120.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("01",
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.black,
                              fontFamily: "Butler-Medium"),
                            ),

                            Text("02",
                              style: TextStyle(
                                  fontSize: 64.0,
                                  color: Colors.black,
                                  fontFamily: "Butler-Medium"),
                            ),

                            Text("03",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.black,
                                  fontFamily: "Butler-Medium"),
                            ),

                            Text("04",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.black,
                                  fontFamily: "Butler-Medium"),
                            ),

                            Text("05",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.black,
                                  fontFamily: "Butler-Medium"),
                            ),
                          ],
                        ),
                      ),

                      // divider
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 24.0),
                        width: 1.0,
                        color: Colors.grey[200],
                      ),

                      // image
                      Container(
                        width: 409.0,
                        child: Column(
                          children: <Widget>[
                            // image
                            Container(
                              height: 260.0,
                              width: 409.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(_image),
                                fit: BoxFit.fill),
                              ),
                            ),

                            // image caption
                            Flexible(
                              fit: FlexFit.tight,
                              child: Row(
                                children: <Widget>[
                                  Text("Guernica",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontFamily: "Butler-Medium",
                                    fontWeight: FontWeight.w400),
                                  ),

                                  Spacer(),

                                  Text("1937",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.black,
                                        fontFamily: "Butler-Medium",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            // text
                          ],
                        ),
                      ),

                      // divider
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 24.0),
                        width: 1.0,
                        color: Colors.grey[200],
                      ),

                      // share icons link
                      Container(
                        padding: EdgeInsets.only(right: 24.0, bottom: 24.0),
                        width: 120.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // view all artworks
                            Container(
                              height: 150.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.5),
                              ),
                              child: Column(
                                children: <Widget>[
                                  // view all
                                  Flexible(
                                    flex: 6,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("View all\nartworks",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                          fontFamily: "Butler-Medium",
                                          fontWeight: FontWeight.w400),
                                        ),

                                        Icon(Icons.arrow_forward, size: 24.0, color: Colors.black),
                                      ],
                                    ),
                                  ),

                                  // text 1885
                                  Flexible(
                                    flex: 3,
                                    child: Container(
                                      color: Colors.black,
                                        child: Center(
                                          child: Text("1,885",
                                            style: TextStyle(
                                              fontSize: 24.0,
                                              color: Colors.white,
                                              fontFamily: "Butler-Medium",
                                            fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 8.0),

                            // text : share
                            Text("Share",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontFamily: "Butler-Medium"),
                            ),

                            // icons
                            Icon(Icons.link, size: 20.0, color: Colors.black),
                            Icon(Icons.face, size: 20.0, color: Colors.black),
                            Icon(Icons.functions, size: 20.0, color: Colors.black),
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
      ),
    );
  }
}
