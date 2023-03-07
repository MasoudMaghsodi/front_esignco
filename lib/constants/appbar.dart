import 'package:flutter/material.dart';
import 'constants.dart';

class Appbar extends StatelessWidget {
  final double height;
  final double bottomLeftCir;
  final double bottomRightCir;
  const Appbar(
      {super.key,
      this.height = 0,
      this.bottomLeftCir = 0,
      this.bottomRightCir = 0});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        elevation: 0,
        leadingWidth: MediaQuery.of(context).size.width,
        backgroundColor: purple,
        toolbarHeight: 112.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(bottomLeftCir),
            bottomRight: Radius.circular(bottomRightCir),
          ),
        ),
        title: Align(
          child: Container(
            height: height,
            width: MediaQuery.of(context).size.width,
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_outlined,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox.shrink(),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/logo.png"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// Row(
//                     children: [
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     Icons.arrow_back,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Image.asset("images/logo.png"),
                      // ),
                      // Expanded(child: SizedBox.shrink()),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     Icons.shopping_cart_outlined,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     Icons.person_outlined,
                      //     color: Colors.white,
                      //   ),
                      // ),
//                     ],
//                   ),