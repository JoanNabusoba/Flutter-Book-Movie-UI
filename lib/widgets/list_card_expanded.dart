import 'package:book_your_movie/uidata.dart';
import 'package:flutter/material.dart';

class ListCardExpanded extends StatefulWidget {
  @override
  _ListCardExpandedState createState() => _ListCardExpandedState();
}

class _ListCardExpandedState extends State<ListCardExpanded> {
  //grey days of the week
  TextStyle lightGreyText = TextStyle(color: Colors.grey);
  //no. of dots
  List<int> cardDotNo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
  //dots
  Widget cardDot = Container(
    width: 11,
    height: 11,
    decoration: BoxDecoration(color: Colors.grey[100], shape: BoxShape.circle),
  );

  //calendar days
  Widget calendarDays(calendarBg, textColor, calendarDateText) {
    return Container(
        width: 27,
        height: 27,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: calendarBg,
          shape: BoxShape.circle,
        ),
        child: Text(calendarDateText,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold)));
  }

  //buttonTime
  Widget buttonTime(timeText, btnBg, timeBtnColor) {
    return FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: btnBg,
        onPressed: () {},
        child: Text(timeText,
            style: TextStyle(
                color: timeBtnColor,
                fontWeight: FontWeight.w600,
                fontSize: 15)));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 230,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: .5,
                  blurRadius: 7,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(cardDotNo.length, (index) => cardDot),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Sun", style: lightGreyText),
                      Text("Mon", style: lightGreyText),
                      Text("Tue", style: lightGreyText),
                      Text("Wed", style: lightGreyText),
                      Text("Thu", style: lightGreyText),
                      Text("Fri", style: lightGreyText),
                      Text("Sat", style: lightGreyText),
                    ]),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      calendarDays(Colors.amber, Colors.white, "23"),
                      calendarDays(Colors.white, Colors.black87, "24"),
                      calendarDays(Colors.white, Colors.black87, "25"),
                      calendarDays(Colors.white, Colors.black87, "26"),
                      calendarDays(Colors.white, Colors.black87, "27"),
                      calendarDays(Colors.white, Colors.black87, "28"),
                      calendarDays(Colors.white, Colors.black87, "29"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.grey),
                        onPressed: () {}),
                    Text("Theatre hall 1",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    IconButton(
                        icon: Icon(Icons.arrow_forward, color: Colors.grey),
                        onPressed: () {}),
                  ],
                ),
              ),
              Container(
                child: Wrap(
                  runSpacing: 2,
                  spacing: 4,
                  children: <Widget>[
                    buttonTime("10:30am", Colors.amber, Colors.white),
                    buttonTime("12:30pm", Colors.grey[300], Colors.black54),
                    buttonTime("2:30pm", Colors.grey[300], Colors.black54),
                    buttonTime("4:00pm", Colors.grey[300], Colors.black54),
                    buttonTime("6:30pm", Colors.grey[300], Colors.black54),
                  ],
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, UIData.detailPageRoute);
            },
            child: Container(
              margin: EdgeInsets.only(top: 205, right: 15),
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: UIData.mainColor, shape: BoxShape.circle),
              child: Icon(
                Icons.local_movies,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
