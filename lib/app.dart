import 'package:flutter/material.dart';

import 'splashscreen.dart';
import 'home.dart';
import 'login.dart';
//
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
//
//
class Bbumm extends StatelessWidget {
//  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
//
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/splash": (BuildContext context) => SplashScreen(),
        "/home": (BuildContext context) => Home(),
        "/login": (BuildContext context) => Login(),
      },
      title: 'Bbumm',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(105, 192, 201, 1),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Home(),
//      home: StreamBuilder(
//          stream: FirebaseAuth.instance.onAuthStateChanged,
//          builder: (BuildContext context, snapshot) {
//            _firebaseMessaging.requestNotificationPermissions();
//            if (snapshot.connectionState == ConnectionState.waiting) {
//              return Container();
//            } else {
//              if (snapshot.data != null){
//                return Home();
//              }
//              return Login();
//              // return LoginScreen();
//            }
//          }
//      ),
    );
  }
}
