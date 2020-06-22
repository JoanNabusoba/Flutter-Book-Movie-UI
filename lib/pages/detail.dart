import 'dart:ui';

import 'package:book_your_movie/uidata.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Widget seatDot(color) {
    return InkWell(
      child: Container(
        width: 11,
        height: 11,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIData.mainColor,
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: UIData.mainColor,
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                elevation: 0,
                automaticallyImplyLeading: false,
                leading: IconButton(
                    icon: Icon(Icons.chevron_left, color: Colors.white),
                    onPressed: () => Navigator.pop(context)),
                flexibleSpace: FlexibleSpaceBar(

                    //centerTitle: true,
                    title: Text("Wonder Woman",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            "images/wonderwoman.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Colors.grey.withOpacity(0.0),
                                    UIData.mainColor.withOpacity(0.85),
                                  ],
                                  stops: [
                                    0.0,
                                    1.0
                                  ])),
                        )
                      ],
                    )),
              ),
            ];
          },
          body: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 50,
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Theatre hall 1",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: 15),
                        Text("23rd June 2020 - 12:30pm",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                seatDot(UIData.occupiedColor),
                                SizedBox(width: 7),
                                Text("Occupied",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 7),
                                Text("Available",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                seatDot(UIData.mainDarkColor),
                                SizedBox(width: 7),
                                Text("Selected",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * .7,
                            height: 60,
                            alignment: Alignment.center,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    child: Stack(children: [
                                      Opacity(
                                          child: Image.asset(
                                              "images/drawisland.png",
                                              color: Colors.white),
                                          opacity: 0.5),
                                      ClipRect(
                                          child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 30, sigmaY: 5),
                                              child: Image.asset(
                                                  "images/drawisland.png")))
                                    ])
                                    // Image(
                                    //     image:
                                    //         AssetImage("images/drawisland.png")),
                                    ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 25,
                                    alignment: Alignment.center,
                                    child: Text("SCREEN",
                                        style: TextStyle(
                                            letterSpacing: 3.5,
                                            color: Colors.white70,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("A",
                                    style: TextStyle(color: Colors.white))),
                            SizedBox(width: 22),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            //SizedBox(width: 9),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                              ],
                            )),
                            //SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 22),
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("A",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("B",
                                    style: TextStyle(color: Colors.white))),
                            SizedBox(width: 22),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            //SizedBox(width: 9),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                              ],
                            )),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 22),
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("B",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("C",
                                    style: TextStyle(color: Colors.white))),
                            SizedBox(width: 22),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            //SizedBox(width: 9),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.occupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.occupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.occupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                              ],
                            )),
                            seatDot(UIData.mainDarkColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 22),
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("C",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("D",
                                    style: TextStyle(color: Colors.white))),
                            SizedBox(width: 22),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            //SizedBox(width: 9),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                              ],
                            )),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 22),
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("D",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("E",
                                    style: TextStyle(color: Colors.white))),
                            SizedBox(width: 22),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            //SizedBox(width: 9),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.occupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.occupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                              ],
                            )),
                            seatDot(UIData.mainDarkColor),
                            SizedBox(width: 9),
                            seatDot(UIData.mainDarkColor),
                            SizedBox(width: 22),
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("E",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("F",
                                    style: TextStyle(color: Colors.white))),
                            SizedBox(width: 22),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            //SizedBox(width: 9),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                              ],
                            )),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 22),
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("F",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("G",
                                    style: TextStyle(color: Colors.white))),
                            SizedBox(width: 22),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            //SizedBox(width: 9),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                              ],
                            )),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 22),
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("G",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("H",
                                    style: TextStyle(color: Colors.white))),
                            SizedBox(width: 22),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            //SizedBox(width: 9),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                              ],
                            )),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 22),
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("H",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("I",
                                    style: TextStyle(color: Colors.white))),
                            SizedBox(width: 22),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            //SizedBox(width: 9),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                                SizedBox(width: 9),
                                seatDot(UIData.unoccupiedColor),
                              ],
                            )),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 9),
                            seatDot(UIData.unoccupiedColor),
                            SizedBox(width: 22),
                            Container(
                                alignment: Alignment.center,
                                width: 8,
                                child: Text("I",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 52,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  padding: EdgeInsets.all(16),
                  child: FlatButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, UIData.paymentPageRoute),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text("Confirm Seat \& Checkout",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      )),
                ),
              )
            ],
          )),
    );
  }
}
