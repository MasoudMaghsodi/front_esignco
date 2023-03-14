import 'package:flutter/material.dart';
// import 'package:front_esignco/screens/bottombar_page/ar.dart';
// import 'package:front_esignco/screens/login/login.dart';
// import 'package:front_esignco/screens/login/profile.dart';
// import 'package:front_esignco/screens/login/sednsmscode.dart';
import 'screens/bottombar_page/homepage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      // routes: {
      //   '/home': (context) => HomePage(),
      //   '/profile': (context) => Account(),
      //   '/login': (context) => LoginPage(),
      //   '/auth': (context) => SendCode(),
      //   '/ar': (context) => ArShowPage(),
      // },
    );
  }
}
