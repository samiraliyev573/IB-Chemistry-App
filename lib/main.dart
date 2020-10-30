import 'package:IB_Chemsitry_App/configuration.dart';
import 'package:IB_Chemsitry_App/drawerPages/aboutus.dart';
import 'package:IB_Chemsitry_App/drawerPages/contactus.dart';
import 'package:IB_Chemsitry_App/drawerPages/definitions.dart';
import 'package:IB_Chemsitry_App/drawerPages/syllabus.dart';
import 'package:IB_Chemsitry_App/drawerPages/testyourself.dart';
import 'package:IB_Chemsitry_App/splash_screen.dart';
import 'package:flutter/material.dart';

import 'drawerScreen.dart';
import 'homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
        '/aboutus': (context) => About_us(),
        '/syllabus': (context) => Syllabus(),
        '/definitions': (context) => Definitions(),
        '/testyourself': (context) => TestYourself(),
        '/contactus': (context) => Contactus()
      },
      theme: ThemeData(fontFamily: 'Circular', primaryColor: primaryGreen),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() {
      return showDialog(
            context: context,
            builder: (context) => new AlertDialog(
              title: new Text('Are you sure?'),
              content: new Text('You will be leaving the app'),
              actions: <Widget>[
                new FlatButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: new Text('No'),
                ),
                new FlatButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: new Text('Yes'),
                ),
              ],
            ),
          ) ??
          false;
    }

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [DrawerScreen(), HomeScreen()],
        ),
      ),
    );
  }
}
