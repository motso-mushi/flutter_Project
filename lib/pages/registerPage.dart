import 'package:flutter/material.dart';
// import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

import 'package:i_am_wealthy1/widgets/textFormWidget.dart';

import 'loginPage.dart';

// Define a custom Form widget.
class registerPage extends StatefulWidget {
  static const routeName = '/register';
  @override
  registerPageState createState() => registerPageState();
}

class registerPageState extends State<registerPage> {
  String email;
  String name;
  String id;
  String phoneNumber;
  String password;
  String confPass;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text("Resgister"),
    ),
    body: Center(
    child: SingleChildScrollView(
    child: Column(
        children: <Widget>[
    Padding(
    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),

      child:  TextFormFieldWidget(
          color:Colors.lightBlueAccent,
          prefixIcon: Icon(Icons.email),
          text: 'Email Address',
          hintText: 'Email Address',
          onChanged: (value){
            setState(() {
              email  = value;});
          },
          obsecureText: false,
        )

      // child: TextFormField(
      //   decoration: InputDecoration(
      //     prefixIcon: Icon(Icons.email,color: Colors.lightBlueAccent),
      //     labelText: 'Email Address',
      //     enabledBorder: OutlineInputBorder(
      //         borderSide: BorderSide(
      //           color: Colors.blue,
      //         )
      //     ),
      //   ),
      //   onChanged: (value){
      //     setState(() {
      //       email = value;
      //     });
      //   },
      // ),
    ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),

       child: TextFormFieldWidget(
            color:Colors.blue,
            prefixIcon: Icon(Icons.person),
            text: 'person',
            hintText: 'person',
            onChanged: (value){
              setState(() {
                name = value;});
            },
            obsecureText: false,
          )

        // child: TextFormField(
        //   decoration: InputDecoration(
        //     prefixIcon: Icon(Icons.person),
        //     labelText: 'full name',
        //     enabledBorder: OutlineInputBorder(
        //         borderSide: BorderSide(
        //           color: Colors.blue,
        //         )
        //     ),
        //   ),
        //   onChanged: (value){
        //     setState(() {
        //       name = value;
        //     });
        //   },
        // ),
      ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),

            child: TextFormFieldWidget(
              color:Colors.blue,
              prefixIcon: Icon(Icons.hd),
              text: 'id/passport',
              hintText: 'id',
              onChanged: (value){
         setState(() {
        id = value;});
             },
              obsecureText: false,
            )
    ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),

              child:TextFormFieldWidget(
                color:Colors.blue,
                prefixIcon: Icon(Icons.person),
                text: 'phone number',
                hintText: 'number',
                onChanged: (value){
                  setState(() {
                    phoneNumber = value;});
                },
                obsecureText: true,
              )

          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),

             child: TextFormFieldWidget(
                color:Colors.blue,
                prefixIcon: Icon(Icons.hd),
                text: 'password',
                hintText: 'password',
                onChanged: (value){
                  setState(() {
                    password = value;});
                },
                obsecureText: false,
              )

            // child: TextFormField(
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(Icons.hd),
            //     labelText: 'password',
            //     enabledBorder: OutlineInputBorder(
            //         borderSide: BorderSide(
            //           color: Colors.blue,
            //         )
            //     ),
            //   ),
            //   onChanged: (value){
            //     setState(() {
            //       password = value;
            //     });
            //   },
            // ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
            child: MaterialButton(
              child: Text('Register'),
              color: Colors.blue,
              onPressed: () => {

                Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context) => loginPage()),
                  // ); loginPage()));
               ) }
            ),
          )
      ]
    )
    )
    ));
  }
}