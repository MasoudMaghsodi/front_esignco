import 'package:flutter/material.dart';
import 'package:front_esignco/constants/appbar.dart';
import 'package:front_esignco/constants/bottombar.dart';
import 'package:front_esignco/constants/carouselslider.dart';
import 'package:front_esignco/constants/constants.dart';
import 'package:front_esignco/constants/gridview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
        child: Appbar(
          height: 56,
          bottomLeftCir: 16,
          bottomRightCir: 16,
        ),
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          ImageSlider(),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "ایزاین تجربه شیرین طراحی فرش",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Iranyekan",
              fontSize: 16,
            ),
          ),
          Expanded(
            child: GridPhoto(),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}