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
      //  SingleChildScrollView(
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 10.0),
      //       child: SingleChildScrollView(
      //         scrollDirection: Axis.horizontal,
      //         child: Row(
      //           children: [
      //             FutureBuilder<List<dynamic>>(
      //               future: fetchBannerData(),
      //               builder: (BuildContext context, AsyncSnapshot snapshot) {
      //                 if (!snapshot.hasData) {
      //                   return CircularProgressIndicator();
      //                 } else {
      //                   return ListView.builder(
      //                       itemCount: snapshot.data.length,
      //                       itemBuilder: (BuildContext context, int index) {
      //                         return ListTile(
      //                           title:
      //                               Text(snapshot.data[index]['title']['fa']),
      //                           subtitle: Text(
      //                               snapshot.data[index]['subTitle']['fa']),
      //                         );
      //                       });
      //                 }
      //               },
      //             ),
      //             Container(
      //               padding: EdgeInsets.all(12.0),
      //               child: Image.asset('images/1.png',
      //                   width: MediaQuery.of(context).size.width),
      //             ),
      //             Container(
      //               padding: EdgeInsets.all(12.0),
      //               child: Image.asset('images/2.png',
      //                   width: MediaQuery.of(context).size.width),
      //             ),
      //             Container(
      //               padding: EdgeInsets.all(12.0),
      //               child: Image.asset('images/3.png',
      //                   width: MediaQuery.of(context).size.width),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
