import 'package:flutter/material.dart';
import 'package:i_am_wealthy1/pages/registerPage.dart';
import 'package:i_am_wealthy1/widgets/flatButWidget.dart';
import 'package:i_am_wealthy1/utils/ui/colors_ui.dart';
import 'package:i_am_wealthy1/widgets/textFormWidget.dart';


class dashboard extends StatelessWidget {
  static const String routeName = '/homePage';


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),


        body: Center(

         Container(
           child: Card(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        const ListTile(
        leading: Icon(Icons.album, size: 45),
      title: Text('Sonu Nigam'),
      subtitle: Text('Best of Sonu Nigam Song'),
    ),
    ],
    ),
    ),
         );

    ));}
}