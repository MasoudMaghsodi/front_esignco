import 'package:flutter/material.dart';

class GridPhoto extends StatelessWidget {
  const GridPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.only(left: 12, right: 12),
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GridTile(
          child: Image.asset(
            'images/design_carpet.png',
          ),
          footer: Text(
            'فرش دلخواهت را طراحی کن',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Iranyekan",
              fontSize: 12,
            ),
          ),
        ),
        GridTile(
          child: Image.asset(
            'images/search_carpet.png',
          ),
          footer: Text(
            'بین هزاران فرش جستجو کن',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Iranyekan",
              fontSize: 12,
            ),
          ),
        ),
        GridTile(
          child: Image.asset(
            'images/order_carpet.png',
          ),
          footer: Text(
            'سفارش بده و بسپارش به ما',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Iranyekan",
              fontSize: 12,
            ),
          ),
        ),
        GridTile(
          child: Image.asset(
            'images/see_carpet.png',
          ),
          footer: Text(
            'فرشت رو توی فضای خونه ببین',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Iranyekan",
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
