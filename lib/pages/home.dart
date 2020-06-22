import 'package:book_your_movie/widgets/list_card.dart';
import 'package:book_your_movie/widgets/tab_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../uidata.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
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
          Container(
            margin: EdgeInsets.all(16),
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TabButton(
                    btnBackgroundColor: Colors.white,
                    btnTextColor: Colors.black87,
                    buttonTitle: "Romance"),
                SizedBox(width: 16),
                TabButton(
                    btnBackgroundColor: UIData.mainColor,
                    btnTextColor: Colors.white,
                    buttonTitle: "Action"),
                SizedBox(width: 16),
                TabButton(
                    btnBackgroundColor: Colors.white,
                    btnTextColor: Colors.black87,
                    buttonTitle: "Comedy"),
                SizedBox(width: 16),
                TabButton(
                    btnBackgroundColor: Colors.white,
                    btnTextColor: Colors.black87,
                    buttonTitle: "Sci-fi"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  ListCard(
                      cardImg: "images/wonderwoman.jpg",
                      cardTitle: "Wonder Woman"),
                  ListCard(
                      cardImg: "images/doctorstrange.jpg",
                      cardTitle: "Doctor Strange"),
                  ListCard(
                      cardImg: "images/ironman.jpg", cardTitle: "Iron Man 3"),
                  ListCard(
                      cardImg: "images/wonderwoman.jpg",
                      cardTitle: "Wonder Woman"),
                  ListCard(cardImg: "images/after.jpg", cardTitle: "After"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
