import 'package:flutter/material.dart';
import 'package:flutter_web/1115/booklist.dart';

// https://dribbble.com/shots/8194999-Boksz-com/attachments/580870?mode=media

class Boksz extends StatefulWidget {
  @override
  _BokszState createState() => _BokszState();
}

class _BokszState extends State<Boksz> {
  @override
  Widget build(BuildContext context) {
    Color _lightPurpleColor = Color.fromRGBO(193, 176, 250, 1);
    Color _color = Color.fromRGBO(145, 130, 248, 1);

    // background image in book summary container
    String _backgroundImage = "https://cdn.pixabay.com/photo/2016/05/30/13/05/girl-1424685_960_720.png";
    String _backgroundImage1 = "https://cdn.pixabay.com/photo/2016/03/07/22/33/rainbow-1243199_960_720.png";

    return Scaffold(
      backgroundColor: _lightPurpleColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 80.0, vertical: 16.0),
        child: Container(
          padding: EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.white,
            boxShadow: [BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 4)]
          ),
          child: Column(
            children: <Widget>[
              // appbar
              Container(
                height: 28.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // title
                    RichText(text: TextSpan(children: [
                      TextSpan(text: "Boksz",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: _color,
                        fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ".com",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: _lightPurpleColor,
                        fontWeight: FontWeight.w400),
                      ),
                    ]),
                    ),

                    SizedBox(
                      width: 8.0,
                    ),
                    // tab
                    Text("Meus livros",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                    ),

                    Text("Autores",
                      style: TextStyle(
                          fontSize: 12.0,
                          color: _color,
                          fontWeight: FontWeight.w600),
                    ),

                    Text("Favorito",
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),

                    Text("Comunidade",
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),

                    // textfield
                    Container(
                      width: 200.0,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(
                            side: BorderSide(
                              color: _lightPurpleColor,
                              width: 1.0),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,
                              color: _lightPurpleColor,
                              size: 16.0),

                          hintText: "Pesquisar..",
                          hintStyle: TextStyle(
                            fontSize: 10.0,
                            color: _lightPurpleColor,
                            fontWeight: FontWeight.w300),

                          contentPadding: EdgeInsets.only(bottom: 18.0),
                        ),
                      ),
                    ),

                    // cadaster-se
                    Container(
                      width: 100.0,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: _lightPurpleColor,
                        shadows: [BoxShadow
                          (color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 1)],
                      ),
                      child: Center(
                        child: Text("cadaster-se".toUpperCase(),
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // book summary list
              Container(
                margin: EdgeInsets.only(top: 48.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    // text : Stephen King
                    Positioned(
                      top: 0,
                      left: 24.0,
                      child: Text("Stephen King",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    // top right image
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Image.network(
                          _backgroundImage,
                          height: 200.0,
                          fit: BoxFit.contain),
                    ),

                    // left bottom image
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Image.network(
                          _backgroundImage1,
                          height: 100.0,
                          width: 150.0,
                          fit: BoxFit.contain),
                    ),

                    // listview
                    Positioned(
                      top: 40.0,
                      left: 24.0,
                      right: 56.0,
                      bottom: 48.0,
                      child: ListView.builder(
                        itemCount: livroslist.length,
                        scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemBuilder: (BuildContext context, int index){
                            return Container(
                              margin: EdgeInsets.only(right: 24.0),
                              padding: EdgeInsets.all(16.0),
                              width: 220.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: _lightPurpleColor,
                                boxShadow: [BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 1,
                                  blurRadius: 1
                                )]
                              ),
                              child: Column(
                                children: <Widget>[
                                  // image
                                  Flexible(
                                    flex: 7,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 16.0),
                                          height: 100.0,
                                          width: 70.0,
                                         decoration: BoxDecoration(
                                           image: DecorationImage(
                                             image: NetworkImage(
                                               booklist[index].image),
                                             fit: BoxFit.fill),
                                           boxShadow: [BoxShadow(
                                             color: Colors.black12,
                                             spreadRadius: 1,
                                             blurRadius: 1)]
                                         ),
                                        ),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Text(booklist[index].title,
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                            ),

                                            // score
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Icon(Icons.star, size: 12.0, color: Colors.white),
                                                Icon(Icons.star, size: 12.0, color: Colors.white),
                                                Icon(Icons.star, size: 12.0, color: Colors.white),
                                                Icon(Icons.star, size: 12.0, color: _color.withOpacity(0.8)),
                                                Icon(Icons.star, size: 12.0, color: _color.withOpacity(0.8)),
                                              ],
                                            ),

                                            Row(
                                              children: <Widget>[
                                                Container(
                                                  margin: EdgeInsets.only(right: 8.0),
                                                  height: 20.0,
                                                    width: 20.0,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: NetworkImage("https://cdn.pixabay.com/photo/2019/11/10/11/13/bridal-4615557__340.jpg"),
                                                      fit: BoxFit.fill
                                                    )
                                                  ),
                                                ),

                                                Container(
                                                  margin: EdgeInsets.only(right: 8.0),
                                                  height: 20.0,
                                                  width: 20.0,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                          image: NetworkImage("https://cdn.pixabay.com/photo/2019/11/10/11/13/bridal-4615557__340.jpg"),
                                                          fit: BoxFit.fill
                                                      )
                                                  ),
                                                ),

                                                Container(
                                                  height: 20.0,
                                                  width: 20.0,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: _color
                                                  ),
                                                  child: Center(
                                                      child: Icon(Icons.more_horiz, size: 12.0, color: Colors.white)),
                                                ),
                                              ],
                                            ),

                                            Row(
                                              children: <Widget>[
                                                Container(
                                                  margin: EdgeInsets.only(right: 4.0),
                                                  width: 28.0,
                                                  color: Color.fromRGBO(217, 193, 251, 1),
                                                  child: Center(
                                                    child: Text("king",
                                                    style: TextStyle(
                                                      fontSize: 6.0,
                                                      color: _color,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(right: 4.0),
                                                  width: 28.0,
                                                  color: Color.fromRGBO(217, 193, 251, 1),
                                                  child: Center(
                                                    child: Text("king",
                                                    style: TextStyle(
                                                      fontSize: 6.0,
                                                      color: _color,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 28.0,
                                                  color: Color.fromRGBO(217, 193, 251, 1),
                                                  child: Center(
                                                    child: Text("king",
                                                    style: TextStyle(
                                                      fontSize: 6.0,
                                                      color: _color,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: 8.0,
                                  ),

                                  // text
                                  Flexible(
                                    flex: 3,
                                    child: Text("It is a 1986 horror novel by Amer\nican author Stephen King. It was his 22nd book, and \nhis 17th novel written under his own name. The story follows the experiences of seven children\nas they are terrorized by an evil entity that exploits the fears of its victims to disguise itself while hunting its prey. It primarily appears in the form of Pennywise the Dancing Clown to attract its preferred prey of young children",
                                    style: TextStyle(
                                      fontSize: 4.0,
                                      color: Colors.white,
                                      height: 1.0
                                    ),
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),

              // book & autores
              Flexible(
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
                  child: Row(
                    children: <Widget>[
                      // livros
                      Flexible(
                        flex: 2,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              // title
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Livros",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Flexible(
                                fit: FlexFit.tight,
                                child: GridView.builder(
                                  padding: EdgeInsets.only(top: 16.0),
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 16.0,
                                      mainAxisSpacing: 16.0,
                                      childAspectRatio: 2.5
                                    ),
                                    itemBuilder: (BuildContext context, int idx){
                                      return Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(right: 16.0),
                                            width: 80.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(livroslist[idx].image),
                                                fit: BoxFit.fill)
                                            ),
                                          ),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text(livroslist[idx].title,
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                              ),

                                              Text("Stephen King",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600),
                                              ),

                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.star, size: 10.0, color: _color,),
                                                  Icon(Icons.star, size: 10.0, color: _color,),
                                                  Icon(Icons.star, size: 10.0, color: _color,),
                                                  Icon(Icons.star, size: 10.0, color: Colors.grey,),
                                                  Icon(Icons.star, size: 10.0, color: Colors.grey,),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                itemCount: 6,),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // autores
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            // title
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("Autores",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                            Flexible(
                              fit: FlexFit.tight,
                              child: ListView.builder(
                                padding: EdgeInsets.only(top: 16.0),
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: autores.length,
                                itemBuilder: (BuildContext context, int num){
                                  return Container(
                                    margin: EdgeInsets.only(bottom: 16.0),
                                    height: 40.0,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 16.0),
                                          height: 32.0,
                                          width: 32.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage(autores[num].image),
                                                fit: BoxFit.fill)
                                          ),
                                        ),

                                        Text(autores[num].title,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  );
                                },
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
      ),
    );
  }
}
