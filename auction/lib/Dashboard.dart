import 'package:auction/Notification.dart';
import 'package:auction/main.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyDashboardPage(),
    );
  }
}

class MyDashboardPage extends StatefulWidget
{
  @override
  _MyDashboardPage createState() => new _MyDashboardPage();
}

class _MyDashboardPage extends State<MyDashboardPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Dashboard"),
      ),

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(""),
              ),
            ),

            new ListTile(
              title: new Text('Home'),
              onTap: (){
                Navigator.of(context).pop();

                Navigator.push(
                    context, new MaterialPageRoute
                  (builder: (BuildContext context) => new MyApp() )
                );

              },
            ),

            new Divider(
              color: Colors.black,
              height: 5.0,
            ),

            new ListTile(
              title: new Text('Dashboard'),
              onTap: (){
                Navigator.of(context).pop();

                Navigator.push(
                    context, new MaterialPageRoute
                  (builder: (BuildContext context) => new Dashboard() )
                );

              },
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),

            new ListTile(
              title: new Text('Notifications'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(
                    context, new MaterialPageRoute
                  (builder: (BuildContext context) => new Notifications() )
                );

              },
            ),
          ],
        ),
      ),


    );
  }
}