// import 'dart:convert';

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../network/slidermodel.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Photo>>(
      future: fetchPhotos(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('An error has occurred!'),
          );
        } else if (snapshot.hasData) {
          return PhotosList(photos: snapshot.data!);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class PhotosList extends StatelessWidget {
  const PhotosList({super.key, required this.photos});

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
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
        itemCount: photos.length,
        itemBuilder: (context, index, realIndex) {
          return Image.network(photos[index].url);
        },
      ),
    );
    // GridView.builder(
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //   ),
    //   itemCount: photos.length,
    //   itemBuilder: (context, index) {
    //     return Image.network(photos[index].thumbnailUrl);
    //   },
    // );
  }
}
