import 'package:book_your_movie/animation/expanded_list.dart';
import 'package:book_your_movie/widgets/list_card_expanded.dart';
import 'package:flutter/material.dart';

class ListCard extends StatefulWidget {
  final String cardTitle, cardImg;

  const ListCard({Key key, this.cardTitle, this.cardImg}) : super(key: key);

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  var _isExpanded;

  @override
  void initState() {
    _isExpanded = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 100,
                      padding: EdgeInsets.only(left: 95),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          ListTile(
                            title: Text(widget.cardTitle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16)),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                            fontWeight: FontWeight.w600)),
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
                      height: 124.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image(
                            image: AssetImage(widget.cardImg),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
          ),
          ExpandedSection(
            child: ListCardExpanded(),
            expand: _isExpanded,
          )
        ],
      ),
    );
  }
}
