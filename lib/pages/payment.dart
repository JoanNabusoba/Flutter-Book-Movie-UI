import 'package:book_your_movie/uidata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  //no. of dots
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  List<int> cardDotNo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];

  Widget cardDot = Container(
    width: 11,
    height: 11,
    decoration: BoxDecoration(color: Colors.grey[100], shape: BoxShape.circle),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
                    icon: Icon(Icons.chevron_left, color: Colors.black87),
                    onPressed: () => Navigator.pop(context)),
          centerTitle: true,
          title: Text("My Cinemax", style: TextStyle(color: Colors.black87)),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  CupertinoIcons.settings,
                  color: Colors.black87,
                ),
                onPressed: () {})
          ]),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 50,
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 110,
                              padding: EdgeInsets.only(left: 105),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: .5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  ListTile(
                                    title: Text("Wonderwoman",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w600,
                                            )),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 2),
                                        Text("Action | Sci-fi  .  2h 28m",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis),
                                        SizedBox(height: 2),
                                        Row(
                                          children: <Widget>[
                                            Text("IMDB"),
                                            SizedBox(width: 5),
                                            Text("8.1",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 7),
                              height: 130.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image(
                                    image: AssetImage("images/wonderwoman.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Cinema",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(height: 2),
                            Text("Theatre hall 1",
                                style: TextStyle(
                                    color: UIData.mainColor, fontWeight: FontWeight.w600))
                          ],
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10),
                                  Text("Date",
                                      style: TextStyle(color: Colors.grey)),
                                  SizedBox(height: 2),
                                  Text("Monday, 23rd June",
                                      style: TextStyle(
                                          color: UIData.mainColor,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text("Begins",
                                      style: TextStyle(color: Colors.grey)),
                                  SizedBox(height: 2),
                                  Text("3:00pm",
                                      style: TextStyle(
                                          color: UIData.mainColor,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text("Ends",
                                      style: TextStyle(color: Colors.grey)),
                                  SizedBox(height: 2),
                                  Text("4:48pm",
                                      style: TextStyle(
                                          color: UIData.mainColor,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                            ),
                          ],
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(5),
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text("Audi",
                                      style: TextStyle(color: Colors.grey)),
                                  SizedBox(height: 2),
                                  Text("4",
                                      style: TextStyle(
                                          color: UIData.mainColor,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text("Row",
                                      style: TextStyle(color: Colors.grey)),
                                  SizedBox(height: 2),
                                  Text("D",
                                      style: TextStyle(
                                          color: UIData.mainColor,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text("Seats",
                                      style: TextStyle(color: Colors.grey)),
                                  SizedBox(height: 2),
                                  Text("D4, D5",
                                      style: TextStyle(
                                          color: UIData.mainColor,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                            ),
                          ],
                        )),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(cardDotNo.length, (index) => cardDot),
                      ),
                    ),
                    Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(
                            top: 8, bottom: 8, left: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text("Ticket ID",
                                      style: TextStyle(color: Colors.grey)),
                                  SizedBox(height: 2),
                                  Text("PVR 8020 MPOA 6721D",
                                      style: TextStyle(
                                          color: UIData.mainColor,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text("Price",
                                      style: TextStyle(color: Colors.grey)),
                                  SizedBox(height: 2),
                                  Text("KSh. 1300",
                                      style: TextStyle(
                                          color: UIData.mainColor,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                            ),
                          ],
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            top: 15, bottom: 20, left: 10, right: 10),
                        child: Text("Confirm ticket by just one click",
                            style: TextStyle(color: Colors.grey)))
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
              decoration: BoxDecoration(color: UIData.mainColor),
              padding: EdgeInsets.all(16),
              child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Checkout with MPESA or VISA",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white)),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white)
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
