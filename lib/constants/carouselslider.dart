import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

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
            margin: EdgeInsets.symmetric(horizontal: 12.0),
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
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    '${data['data']['result'][index]['imageSmall']}',
                    fit: BoxFit.fill,
                  ),
                );
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

Future<Map> getPics() async {
  String url =
      'https://ws.esignco.ir/api/v1/slider/banner?SliderType=slider&LandingPageId=home-landing';
  http.Response response = await http.get(Uri.parse(url));
  return json.decode(response.body);
}
