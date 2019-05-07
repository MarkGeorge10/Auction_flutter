import 'package:auction/main.dart';
import 'package:flutter/material.dart';

import 'package:auction/Signup.dart';


void main() => runApp(Loginpage());


class Loginpage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auction',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget
{
  @override
  _MyLoginPage createState() => new _MyLoginPage();
}

class _MyLoginPage extends State<MyLoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {





    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 4.0,

      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),


      child: MaterialButton(
        minWidth: 150.0,
        height: 50.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {

          Navigator.push(
              context, new MaterialPageRoute
          (builder: (BuildContext context) => new MyApp())
          );

        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),

    );

    final signupButon = Material(
      elevation: 4.0,

      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),


      child: MaterialButton(
        minWidth: 150.0,
        height: 50.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute
            (builder: (BuildContext context) => new MySignuppage() )
          );
        },
        child: Text("Sign Up",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),

    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                  child: Image.asset(
                    "assets/images/mazzad.png",
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

                SizedBox(
                  height: 70.0,


                  child:  Row(
                    children: <Widget>[
                      signupButon,
                      new Padding(padding: new EdgeInsets.only(

                        right: 25.0,

                      ),
                      ),


                      loginButon,

                    ],
                  ),

                ),


              /* SizedBox(
                  height: 15.0,
                  child:  ButtonTheme(
                    minWidth: 50.0,
                    height: 50.0,

                    child:  Row(
                      children: <Widget>[

                        new Padding(padding: new EdgeInsets.only(

                          right: 280,
                          bottom: 80,
                        ),
                        ),



                        new RaisedButton(
                          onPressed: () {

                            //Navigator.of(context).pop(true);
                            Navigator.push(
                                context, new MaterialPageRoute
                              (builder: (BuildContext context) => new MyApp() )
                            );
                          },
                          color: Colors.white,
                          child: new Text("Skip"),
                        ),
                        /* new IconButton(
                        icon: new Icon(Icons.navigate_next),
                        color: Colors.blue,

                        onPressed: (){print("Called....");},
                      ),*/
                      ],
                    ),
                  ),
                ),*/
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}