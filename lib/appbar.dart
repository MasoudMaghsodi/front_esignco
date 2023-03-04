import 'package:flutter/material.dart';
import 'constants/constants.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: 112.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: purple,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/logo.png"),
                    ),
                    Expanded(child: SizedBox.shrink()),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
