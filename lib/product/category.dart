import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CategorySell extends StatefulWidget {
  const CategorySell({super.key});

  @override
  State<CategorySell> createState() => _CategorySellState();
}

class _CategorySellState extends State<CategorySell> {
  final List<String> Images = [
    'https://minio.esignco.ir/esign-files/shop/products/331/Y1GDWFLHVMKHK5OA7M.jpg',
    'https://minio.esignco.ir/esign-files/shop/products/339/F1DND961GI7AU16A2B.jpg',
    'https://minio.esignco.ir/esign-files/shop/products/340/M8QXUJW25CCCY9VKRI.jpg',
    'https://minio.esignco.ir/esign-files/shop/products/346/WXE7PEAZB56GMUREKE.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   height: 553.466,
        //   width: 406.897,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.stretch,
        //     children: [
        //       Container(
        //         width: 382.897,
        //         margin: EdgeInsets.only(top: 32.0, bottom: 13.280),
        //         padding: EdgeInsets.only(left: 12, right: 12),
        //         child: Text(
        //           "برترین های دهه فجر",
        //           textAlign: TextAlign.start,
        //           textDirection: TextDirection.rtl,
        //           style: TextStyle(
        //             color: Colors.black,
        //             fontFamily: "Iranyekan",
        //             fontSize: 16,
        //           ),
        //         ),
        //       ),
        CarouselSlider.builder(
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
    //     ],
    //   ),
    // );
  }

  Widget buildImage(String Images, int index) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 360,
            width: 240,
            //width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            //padding: EdgeInsets.only(right: 5.0, left: 5.0, top: 10.0),
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
            'فرش افشان',
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
            'تومان 125,000,000 ',
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
