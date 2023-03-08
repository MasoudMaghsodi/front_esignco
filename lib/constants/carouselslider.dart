import 'dart:js';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final List<String> Images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
  ];
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
        itemCount: Images.length,
        itemBuilder: (context, index, realIndex) {
          final firstImage = Images[index];

          return buildImage(firstImage, index);
        },
      ),
    );
  }
}

Widget buildImage(String Images, int index) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      child: Image.asset(
        Images,
        fit: BoxFit.cover,
      ),
    ),
  );
}
