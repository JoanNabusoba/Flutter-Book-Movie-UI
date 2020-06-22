import 'package:book_your_movie/pages/detail.dart';
import 'package:book_your_movie/pages/home.dart';
import 'package:book_your_movie/pages/payment.dart';
import 'package:book_your_movie/pages/select_seat.dart';
import 'package:book_your_movie/uidata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Your Movie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.ptSansTextTheme(
          Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        UIData.homePageRoute: (BuildContext context) => HomePage(),
        UIData.detailPageRoute: (BuildContext context) => DetailPage(),
        UIData.selectSeatPageRoute: (BuildContext context) => SelectSeat(),
        UIData.paymentPageRoute: (BuildContext context) => PaymentPage()
      }
    );
  }
}

