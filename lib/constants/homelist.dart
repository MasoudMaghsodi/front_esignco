import 'package:flutter/material.dart';
import 'package:front_esignco/constants/colors.dart';

import 'aboutme.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 13.0),
          alignment: Alignment.centerRight,
          child: Text(
            ' !با اطلاعات فرش بیشتر آشنا شو',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Iranyekan",
              fontSize: 16,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('مشاهده بلاگ', style: TextStyle(color: purple)),
          style: ElevatedButton.styleFrom(
            backgroundColor: background,
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: purple,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            shadowColor: purple,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        AboutMe(),
      ],
    );
  }
}
