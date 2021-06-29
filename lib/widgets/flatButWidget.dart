import 'package:flutter/material.dart';
import 'package:i_am_wealthy1/utils/ui/colors_ui.dart';

class raisedButWidget extends StatelessWidget {
  const raisedButWidget(
      {Key key, this.text, this.color, this.onPressed, this.textColor, this.splashColor,
      })      : super(key: key);

  final String text;
  final Color color;
  final VoidCallback onPressed;
  final Color textColor;
  final Color splashColor;
  // final String style;
  // final FontWeight fontWeight;
  // final String textAlign;

  @override
  Widget build(BuildContext context) {

    RaisedButton(
      child: Text(text),
      color: AppColors.blue,
      textColor:textColor,
      padding: EdgeInsets.all(8.0),
      splashColor:splashColor,
      // Colors.blueAccent,
        onPressed: onPressed,
    );}}