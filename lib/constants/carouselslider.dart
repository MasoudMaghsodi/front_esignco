import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:front_esignco/network/slidermodel.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  Carousel ImageSlider = Carousel(id: '', image: 'images/1.png');

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
        itemCount: ImageSlider.length,
        itemBuilder: (context, index, realIndex) {
          final firstImage = ImageSlider[index];

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
