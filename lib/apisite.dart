import 'dart:convert';
import 'package:http/http.dart' as http;

Future<http.Response> fetchData() {
  return http.get(Uri.parse(
      'https://ws.esignco.ir/api/v1/slider/banner?SliderType=slider&LandingPageId=home-landing'));
}

Future<List<dynamic>> fetchBannerData() async {
  var result = await http.get(Uri.parse(
      'https://ws.esignco.ir/api/v1/slider/banner?SliderType=slider&LandingPageId=home-landing'));
  return json.decode(result.body)['data'];
}

class AutoGenerate {
  AutoGenerate({
    required this.result,
    required this.data,
  });
  late final String result;
  late final Data data;

  AutoGenerate.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['result'] = result;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.searchParameter,
    required this.result,
    required this.totalCount,
    required this.filterCount,
  });
  late final SearchParameter searchParameter;
  late final List<Result> result;
  late final int totalCount;
  late final int filterCount;

  Data.fromJson(Map<String, dynamic> json) {
    searchParameter = SearchParameter.fromJson(json['searchParameter']);
    result = List.from(json['result']).map((e) => Result.fromJson(e)).toList();
    totalCount = json['totalCount'];
    filterCount = json['filterCount'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['searchParameter'] = searchParameter.toJson();
    _data['result'] = result.map((e) => e.toJson()).toList();
    _data['totalCount'] = totalCount;
    _data['filterCount'] = filterCount;
    return _data;
  }
}

class SearchParameter {
  SearchParameter({
    this.publishDate,
    this.sliderPublishType,
    required this.sliderType,
    required this.landingPageId,
    this.isFeature,
    required this.pageIndex,
    required this.pageSize,
    required this.needTotalCount,
    required this.search,
  });
  late final Null publishDate;
  late final Null sliderPublishType;
  late final int sliderType;
  late final String landingPageId;
  late final Null isFeature;
  late final int pageIndex;
  late final int pageSize;
  late final bool needTotalCount;
  late final String search;

  SearchParameter.fromJson(Map<String, dynamic> json) {
    publishDate = null;
    sliderPublishType = null;
    sliderType = json['sliderType'];
    landingPageId = json['landingPageId'];
    isFeature = null;
    pageIndex = json['pageIndex'];
    pageSize = json['pageSize'];
    needTotalCount = json['needTotalCount'];
    search = json['search'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['publishDate'] = publishDate;
    _data['sliderPublishType'] = sliderPublishType;
    _data['sliderType'] = sliderType;
    _data['landingPageId'] = landingPageId;
    _data['isFeature'] = isFeature;
    _data['pageIndex'] = pageIndex;
    _data['pageSize'] = pageSize;
    _data['needTotalCount'] = needTotalCount;
    _data['search'] = search;
    return _data;
  }
}

class Result {
  Result({
    required this.title,
    required this.url,
    required this.imageSmall,
    required this.mediaIdSmall,
    required this.imageLarge,
    required this.mediaIdLarge,
    required this.landingPageId,
    required this.order,
    required this.isActive,
    required this.isExternal,
    required this.isFeatured,
    required this.sliderType,
    required this.startTime,
    this.endTime,
    required this.smallAreas,
    required this.largeAreas,
    required this.id,
    required this.sliderPublishType,
    required this.sliderPublishTypeName,
    required this.sliderTypeName,
  });
  late final String title;
  late final String url;
  late final String imageSmall;
  late final String mediaIdSmall;
  late final String imageLarge;
  late final String mediaIdLarge;
  late final String landingPageId;
  late final int order;
  late final bool isActive;
  late final bool isExternal;
  late final bool isFeatured;
  late final int sliderType;
  late final String startTime;
  late final Null endTime;
  late final List<dynamic> smallAreas;
  late final List<dynamic> largeAreas;
  late final int id;
  late final int sliderPublishType;
  late final String sliderPublishTypeName;
  late final String sliderTypeName;

  Result.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    imageSmall = json['imageSmall'];
    mediaIdSmall = json['mediaIdSmall'];
    imageLarge = json['imageLarge'];
    mediaIdLarge = json['mediaIdLarge'];
    landingPageId = json['landingPageId'];
    order = json['order'];
    isActive = json['isActive'];
    isExternal = json['isExternal'];
    isFeatured = json['isFeatured'];
    sliderType = json['sliderType'];
    startTime = json['startTime'];
    endTime = null;
    smallAreas = List.castFrom<dynamic, dynamic>(json['smallAreas']);
    largeAreas = List.castFrom<dynamic, dynamic>(json['largeAreas']);
    id = json['id'];
    sliderPublishType = json['sliderPublishType'];
    sliderPublishTypeName = json['sliderPublishTypeName'];
    sliderTypeName = json['sliderTypeName'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['url'] = url;
    _data['imageSmall'] = imageSmall;
    _data['mediaIdSmall'] = mediaIdSmall;
    _data['imageLarge'] = imageLarge;
    _data['mediaIdLarge'] = mediaIdLarge;
    _data['landingPageId'] = landingPageId;
    _data['order'] = order;
    _data['isActive'] = isActive;
    _data['isExternal'] = isExternal;
    _data['isFeatured'] = isFeatured;
    _data['sliderType'] = sliderType;
    _data['startTime'] = startTime;
    _data['endTime'] = endTime;
    _data['smallAreas'] = smallAreas;
    _data['largeAreas'] = largeAreas;
    _data['id'] = id;
    _data['sliderPublishType'] = sliderPublishType;
    _data['sliderPublishTypeName'] = sliderPublishTypeName;
    _data['sliderTypeName'] = sliderTypeName;
    return _data;
  }
}
