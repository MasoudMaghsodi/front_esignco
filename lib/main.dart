import 'package:flutter/material.dart';
import 'package:front_esignco/list_profile.dart';
import 'package:front_esignco/login.dart';
import 'package:front_esignco/profile.dart';

void main() {
  runApp(Account());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Account(),
    );
  }
}
