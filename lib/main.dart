// import 'package:day35/pages/home.dart';
// import 'package:day35/pages/select_service.dart';
// import 'package:day35/pages/start.dart';
// import 'package:flutter/material.dart';
// import 'package:day35/pages/auth.dart';  // Import the auth page

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: '/',
//     routes: {
//       '/': (context) => AuthPage(),
//       '/select_service': (context) => SelectService(),
//     },
//   ));
// }

// import 'package:day35/pages/home.dart';
// import 'package:day35/pages/select_service.dart';
// import 'package:day35/pages/start.dart';
// import 'package:flutter/material.dart';

// void main () {
//   runApp(MaterialApp(
//     home: StartPage(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

import 'package:day35/pages/auth.dart';
import 'package:day35/pages/home.dart';
import 'package:day35/pages/select_service.dart';
import 'package:day35/pages/start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => AuthPage(),
      '/start': (context) => StartPage(),
      '/select_service': (context) => SelectService(),
      '/home': (context) => HomePage(),
    },
  ));
}