// import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:front_esignco/network/slidermodel.dart';
// import 'package:front_esignco/network/slidermodel.dart';

// class ImageSlider extends StatelessWidget {
//   const ImageSlider({super.key, required this.photos});

//   //Carousel ImageSlider = Carousel(id: '', image: 'images/1.png');
//   final List<Photo> photos;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       child: CarouselSlider.builder(
//         options: CarouselOptions(
//           disableCenter: false,
//           padEnds: false,
//           height: 184.0,
//           viewportFraction: 0.9,
//           enableInfiniteScroll: false,
//         ),
//         itemCount: photos.length,
//         itemBuilder: (context, index, realIndex) {
//           final firstImage = photos[index];

//           return buildImage(photos as String, index);
//         },
//       ),
//     );
//   }
// }

// Widget buildImage(String Images, int index) {
//   return ClipRRect(
//     borderRadius: BorderRadius.circular(20.0),
//     child: Container(
//       margin: EdgeInsets.symmetric(horizontal: 4.0),
//       child: Image.asset(
//         Images,
//         fit: BoxFit.cover,
//       ),
//     ),
//   );
// }

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import '../network/slidermodel.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPics(),
      builder: (context, snapshot) {
        Map? data = snapshot.data;
        if (snapshot.hasError) {
          return const Center(
            child: Text('An error has occurred!'),
          );
        } else if (snapshot.hasData) {
          return Container(
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                disableCenter: false,
                padEnds: false,
                height: 184.0,
                viewportFraction: 0.9,
                enableInfiniteScroll: false,
              ),
              itemCount: data!['data']['result'].length,
              itemBuilder: (context, index, realIndex) {
                return Image.network(
                    '${data['data']['result'][index]['imageSmall']}');
              },
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}


// class PhotosList extends StatelessWidget {
//   const PhotosList({super.key});

  // final List<Photo> photos;

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     child: CarouselSlider.builder(
  //       options: CarouselOptions(
  //         disableCenter: false,
  //         padEnds: false,
  //         height: 184.0,
  //         viewportFraction: 0.9,
  //         enableInfiniteScroll: false,
  //       ),
  //       itemCount: data.length,
  //       itemBuilder: (context, index, realIndex) {
  //         return Image.network(photos[index].imageLarge);
  //       },
  //     ),
  //   );
    // GridView.builder(
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //   ),
    //   itemCount: photos.length,
    //   itemBuilder: (context, index) {
    //     return Image.network(photos[index].thumbnailUrl);
    //   },
    // );
//   }
// }
