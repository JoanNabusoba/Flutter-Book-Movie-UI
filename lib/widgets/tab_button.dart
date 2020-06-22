import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String buttonTitle;
  final Color btnTextColor, btnBackgroundColor;

  const TabButton(
      {Key key, this.buttonTitle, this.btnTextColor, this.btnBackgroundColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: btnBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(buttonTitle,
          style: TextStyle(fontWeight: FontWeight.bold, color: btnTextColor)),
      onPressed: () {},
    );
  }
}
