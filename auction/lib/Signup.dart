import 'package:flutter/material.dart';



class Signuppage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auction',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MySignuppage(),
    );
  }
}

class MySignuppage extends StatefulWidget
{
  @override
  _MySignuppage createState() => new _MySignuppage();
}

class _MySignuppage extends State<MySignuppage> {

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final NameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Text",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final emailField = TextField(
      obscureText: false,
      style: style,
      keyboardType: TextInputType.emailAddress,
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

    final confirmpasswordField = TextField(
      obscureText: true,
      style: style,

      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "confirm Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final phoneField = TextField(
      obscureText: true,
      style: style,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "phone number",

          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final signupButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Sign up",
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
                SizedBox(height: 25.0),
                NameField,
                SizedBox(height: 15.0),
                emailField,
                SizedBox(height: 15.0),
                passwordField,
                SizedBox(height: 15.0),
                confirmpasswordField,

                SizedBox(height: 15.0),
                phoneField,
                SizedBox(
                  height: 15.0,
                ),
                signupButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

