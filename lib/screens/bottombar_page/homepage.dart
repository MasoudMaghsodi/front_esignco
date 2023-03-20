import 'package:flutter/material.dart';
import 'package:front_esignco/constants/carouselslider.dart';
import 'package:front_esignco/constants/gridview.dart';
import 'package:front_esignco/constants/homelist.dart';
import '../../product/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          ImageSlider(
            title: '',
          ),
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
          SizedBox(
            height: 442.397,
            width: 382.897,
            child: GridPhoto(),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 32.0, bottom: 13.280),
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "برترین ها",
              //textAlign: TextAlign.start,
              // textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Iranyekan",
                fontSize: 16,
              ),
            ),
          ),
          CategorySell(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 32, horizontal: 12.0),
            alignment: Alignment.centerRight,
            child: Text(
              'چطوری دیزاین کنم؟',
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Iranyekan",
                fontSize: 16,
              ),
            ),
          ),
          VideoPlayerExample(),
          //add video player
          Container(
            margin: EdgeInsets.symmetric(vertical: 32, horizontal: 12.0),
            alignment: Alignment.centerRight,
            child: Text(
              'قابل ویرایش ها',
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Iranyekan",
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 489.15,
            width: 532,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: CategorySell(),
          ),
          Container(
            margin: EdgeInsets.only(top: 32.0, bottom: 13.0),
            alignment: Alignment.centerRight,
            child: Text(
              'جدیدترین محصولات',
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Iranyekan",
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 489.15,
            width: 532,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: CategorySell(),
          ),
          SizedBox(
            height: 20.0,
          ),
          HomeList()
        ],
      ),
    );
  }
}
