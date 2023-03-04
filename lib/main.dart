import 'package:flutter/material.dart';
import 'package:front_esignco/list_profile.dart';
import 'package:front_esignco/login.dart';
import 'package:front_esignco/profile.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Account(),
    );
  }
}
