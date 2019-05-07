
import 'package:auction/main.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:fancy_on_boarding/page_model.dart';



class BoardingScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyBoardingPage(),
    );
  }
}

class MyBoardingPage extends StatefulWidget
{
  @override
  _MyBoardingPage createState() => new _MyBoardingPage();
}

class _MyBoardingPage extends State<MyBoardingPage> {

  final page = new PageViewModel(

    iconImageAssetPath: 'assets/images/slide_1.png',

    iconColor: null,
    bubbleBackgroundColor: null,
    body: Text(
      'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
    ),
    title: Text('Cabs'),
    mainImage: Image.asset(
      'assets/images/slide_1.png',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
    textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
  );



  @override
  Widget build(BuildContext context) {

    return new IntroViewsFlutter(
      [page],
      onTapDoneButton: (){
        //Void Callback
      },
      showSkipButton: true,
      pageButtonTextStyles: new TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontFamily: "Regular",
      ),
    );
  }




}


