import 'package:flutter/material.dart';
import 'package:front_esignco/constants/colors.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

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
        )
        // Container(
        //   height: 92.0,
        //   margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10.0), color: Colors.white),
        //   child: ListTile(
        //     trailing: Image.network(
        //       'https://minio.esignco.ir/esign-files/blogPost/categories/1401-04-21/MOI3CJLL7905YKQNI0.jpg',
        //       height: 92.0,
        //     ),
        //     title: Text(
        //       'اخبار',
        //       textAlign: TextAlign.right,
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontFamily: "Iranyekan",
        //         fontSize: 16,
        //       ),
        //     ),
        //     subtitle: Text(
        //       'اخبار دکوراسیون ایران',
        //       textAlign: TextAlign.right,
        //       style: TextStyle(
        //         color: Colors.black54,
        //         fontFamily: "Iranyekan",
        //         fontSize: 16,
        //       ),
        //     ),
        //   ),
        // ),
        // Container(
        //   height: 92.0,
        //   margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10.0), color: Colors.white),
        //   child: ListTile(
        //     trailing: Image.network(
        //       'https://minio.esignco.ir/esign-files/blogPost/1401-09-09/IMM6YBTWEQX4Y5SX8A.png',
        //       height: 92.0,
        //     ),
        //     title: Text(
        //       'بلاگ تست عماد',
        //       textAlign: TextAlign.right,
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontFamily: "Iranyekan",
        //         fontSize: 16,
        //       ),
        //     ),
        //     subtitle: Text(
        //       'تست است',
        //       textAlign: TextAlign.right,
        //       style: TextStyle(
        //         color: Colors.black54,
        //         fontFamily: "Iranyekan",
        //         fontSize: 16,
        //       ),
        //     ),
        //   ),
        // ),
        // Container(
        //   height: 92.0,
        //   margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10.0), color: Colors.white),
        //   child: ListTile(
        //     trailing: Image.network(
        //       'https://minio.esignco.ir/esign-files/blogPost/1401-09-05/P85DMD7T8DKFQ3RY81.jpg',
        //       height: 92.0,
        //     ),
        //     title: Text(
        //       'بلاگ تست عماد',
        //       textAlign: TextAlign.right,
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontFamily: "Iranyekan",
        //         fontSize: 16,
        //       ),
        //     ),
        //     subtitle: Text(
        //       'تست است',
        //       textAlign: TextAlign.right,
        //       style: TextStyle(
        //         color: Colors.black54,
        //         fontFamily: "Iranyekan",
        //         fontSize: 16,
        //       ),
        //     ),
        //   ),
        // ),
        // Container(
        //   height: 92.0,
        //   margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10.0), color: Colors.white),
        //   child: ListTile(
        //     trailing: Image.network(
        //       'https://minio.esignco.ir/esign-files/blogPost/1401-04-21/K88FGERQ4F3X90MG3N.jpg',
        //       height: 92.0,
        //     ),
        //     title: Text(
        //       'بلاگ تست عماد',
        //       textAlign: TextAlign.right,
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontFamily: "Iranyekan",
        //         fontSize: 16,
        //       ),
        //     ),
        //     subtitle: Text(
        //       'تست است',
        //       textAlign: TextAlign.right,
        //       style: TextStyle(
        //         color: Colors.black54,
        //         fontFamily: "Iranyekan",
        //         fontSize: 16,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
