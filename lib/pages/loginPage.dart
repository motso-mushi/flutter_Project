import 'package:flutter/material.dart';
import 'package:i_am_wealthy1/pages/registerPage.dart';
import 'package:i_am_wealthy1/widgets/buttonWidget.dart';
import 'package:i_am_wealthy1/utils/ui/colors_ui.dart';
import 'package:i_am_wealthy1/pages/dashboard.dart';
import '../main.dart';
class loginPage extends StatefulWidget {
  static const routeName = '/loginPage';
  loginPageState createState() => loginPageState();
}



class loginPageState extends State<loginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  static const routeName = '/loginPage';
  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      obscureText: false,
      style: style,

      decoration: InputDecoration(
          fillColor:AppColors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextFormField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          fillColor:AppColors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    // final loginButon = Material(
    //   elevation: 5.0,
    //   borderRadius: BorderRadius.circular(30.0),
    //   color: Color(0xff01A0C7),
    //   child: MaterialButton(
    //     minWidth: MediaQuery.of(context).size.width,
    //     padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //     onPressed: () {},
    //     child: Text("Login",
    //         textAlign: TextAlign.center,
    //         style: style.copyWith(4
    //             color: Colors.white, fontWeight: FontWeight.bold)),
    //   ),
    // );


      // MaterialButton(
      //   minWidth: MediaQuery.of(context).size.width,
      //   padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => registerPage()),
      //     );
      //   },
      //   child: Text("register",
      //       textAlign: TextAlign.center,
      //       style: style.copyWith(
      //           color: Colors.white, fontWeight: FontWeight.bold)),
      // ),

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "lib/utils/images/diamond2.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
            ButtonWidget(text:'login',color:Colors.blue,textColor: Colors.black,minWidth:500.0,onPressed:
                () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => dashboard()),
              );
            },
            ),
                // SizedBox(
                //   height: 15.0,
                // ),
            ButtonWidget(text:'register',color:Colors.blue,textColor: Colors.black,minWidth:500.0,onPressed:
                () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => registerPage()),
              );
            },
            ),
    // SizedBox(height: 15.0,
    // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}