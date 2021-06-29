import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key key, this.text, this.color, this.onPressed, this.textColor,
        this.minWidth})
      : super(key: key);

  final String text;
  final Color color;
  final VoidCallback onPressed;
  final Color textColor;
  final double minWidth;
  // final String style;
  // final FontWeight fontWeight;
  // final String textAlign;

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(onPressed: onPressed, child: Text(text), style: ElevatedButton.styleFrom(
      primary: color ,
      onPrimary: Colors.white,
      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
    ), );

   // return Material(
   //    elevation: 5.0,
   //    borderRadius: BorderRadius.circular(30.0),
   //    color: color,
   //
   //
   //    child: MaterialButton(
   //      minWidth: MediaQuery
   //          .of(context)
   //          .size
   //          .width,
   //      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
   //       onPressed: (onPressed),
   //      child: Text("register",
   //          textAlign: TextAlign.center,
   //          style: TextStyle(
   //              color: color, fontWeight: fontWeight)),
   //    ),
   //  );
  }
}
