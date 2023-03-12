import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CategorySell extends StatefulWidget {
  const CategorySell({super.key});

  @override
  State<CategorySell> createState() => _CategorySellState();
}

class _CategorySellState extends State<CategorySell> {
  final List<String> Images = [
    'https://prodminio.esignco.ir/esign-files/shop/products/168/ZX7ITGK4V5TBOPE5O9.jpg',
    'https://prodminio.esignco.ir/esign-files/shop/products/165/S7FMR00WX8E2HDO4HH.jpg',
    'https://prodminio.esignco.ir/esign-files/shop/products/177/KGG8ZNGDG18UN2HKSC.jpg',
    'https://prodminio.esignco.ir/esign-files/shop/products/176/BWF5W136C1FNKM7O7G.jpg',
    'https://prodminio.esignco.ir/esign-files/shop/products/166/J0FVJL5WK5S2VXYOQI.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 420.0,
        disableCenter: true,
        viewportFraction: 0.9,
        enableInfiniteScroll: false,
      ),
      itemCount: Images.length,
      itemBuilder: (context, index, realIndex) {
        final firstImage = Images[index];
        return buildImage(firstImage, index);
      },
    );
  }

  Widget buildImage(String Images, int index) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 360,
            width: 240,
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            child: Image.network(
              Images,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          width: 240,
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          padding: EdgeInsets.only(right: 5.0, left: 5.0),
          child: Text(
            'فرش ماشینی ایزاین کد 201704',
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Iranyekan",
              fontSize: 16,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          width: 240,
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          padding: EdgeInsets.only(right: 5.0, left: 5.0),
          child: Text(
            'متری 1,600,000 تومان ',
            style: TextStyle(
              color: Colors.black54,
              fontFamily: "Iranyekan",
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}

class VideoPlayerExample extends StatefulWidget {
  const VideoPlayerExample({Key? key}) : super(key: key);

  @override
  State<VideoPlayerExample> createState() => _VideoPlayerExampleState();
}

class _VideoPlayerExampleState extends State<VideoPlayerExample> {
  late VideoPlayerController controller;
  String videoUrl = 'https://www.w3schools.com/html/mov_bbb.mp4';

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.network(videoUrl);

    controller.addListener(() {
      setState(() {});
    });
    controller.setLooping(true);
    controller.initialize().then((_) => setState(() {}));
    controller.play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          if (controller.value.isPlaying) {
            controller.pause();
          } else {
            controller.play();
          }
        },
        child: AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: VideoPlayer(controller),
        ),
      ),
    );
  }
}
