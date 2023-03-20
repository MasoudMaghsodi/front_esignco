import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response = await client.get(
    Uri.parse(
        'https://ws.esignco.ir/api/v1/slider/banner?SliderType=slider&LandingPageId=home-landing'
        //'https://jsonplaceholder.typicode.com/photos'
        ),
  );
  return compute(parsePhotos, response.body);
}

List<Photo> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

class Photo {
  final String title;
  final int id;
  final String url;
  final String imageLarge;
  final String landingPageId;
  final int order;
  final bool isActive;
  final bool isExternal;
  final bool isFeatured;
  final int sliderType;
  final String startTime;
  final String endTime;
  final String smallAreas;
  final String largeAreas;
  final int sliderPublishType;
  final String sliderPublishTypeName;
  final String sliderTypeName;

  const Photo({
    required this.title,
    required this.id,
    required this.url,
    required this.imageLarge,
    required this.landingPageId,
    required this.order,
    required this.isActive,
    required this.isExternal,
    required this.isFeatured,
    required this.sliderType,
    required this.startTime,
    required this.endTime,
    required this.smallAreas,
    required this.largeAreas,
    required this.sliderPublishType,
    required this.sliderPublishTypeName,
    required this.sliderTypeName,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'] as int,
      url: json['url'] as String,
      imageLarge: json['imageLarge'] as String,
      title: json['title'] as String,
      isActive: json['isActive'] as bool,
      isExternal: json['isExternal'] as bool,
      isFeatured: json['isFeatured'] as bool,
      landingPageId: json['landingPageId'] as String,
      order: json['order'] as int,
      sliderType: json['sliderType'] as int,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      smallAreas: json['smallAreas'] as String,
      largeAreas: json['largeAreas'] as String,
      sliderPublishType: json['sliderPublishType'] as int,
      sliderPublishTypeName: json['sliderPublishTypeName'] as String,
      sliderTypeName: json['sliderTypeName'] as String,
    );
  }
}
