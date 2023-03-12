import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

import 'colors.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundinfo,
      width: 382.897,
      height: 483.310,
      padding: EdgeInsets.fromLTRB(16, 32, 16, 48),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 374.897,
            height: 44.086,
            child: Text(
              'سوالی دارید؟ تماس بگیرید        22412263-021',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'iranyekan',
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            width: 374.897,
            height: 0.5,
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 374.897,
            height: 44.086,
            child: RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _isTapped = !_isTapped;
                    });
                  },
                text: 'درباره ما',
                style: TextStyle(
                  color: _isTapped ? purple : Colors.white,
                  fontFamily: 'iranyekan',
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: 374.897,
            height: 0.5,
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 374.897,
            height: 44.086,
            child: RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _isTapped = !_isTapped;
                    });
                  },
                text: 'تماس با ما',
                style: TextStyle(
                  color: _isTapped ? purple : Colors.white,
                  fontFamily: 'iranyekan',
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: 374.897,
            height: 0.5,
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 374.897,
            height: 44.086,
            child: RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _isTapped = !_isTapped;
                    });
                  },
                text: 'بافت فرش سفارشی',
                style: TextStyle(
                  color: _isTapped ? purple : Colors.white,
                  fontFamily: 'iranyekan',
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: 374.897,
            height: 0.5,
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 374.897,
            height: 44.086,
            child: RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _isTapped = !_isTapped;
                    });
                  },
                text: 'پاسخ به پرسش های متداول',
                style: TextStyle(
                  color: _isTapped ? purple : Colors.white,
                  fontFamily: 'iranyekan',
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: 374.897,
            height: 0.5,
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 374.897,
            height: 44.086,
            child: RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _isTapped = !_isTapped;
                    });
                  },
                text: 'قوانین و مقررات',
                style: TextStyle(
                  color: _isTapped ? purple : Colors.white,
                  fontFamily: 'iranyekan',
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: 374.897,
            height: 0.5,
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 374.897,
            height: 44.086,
            child: RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _isTapped = !_isTapped;
                    });
                  },
                text: 'ارتباط با ما',
                style: TextStyle(
                  color: _isTapped ? purple : Colors.white,
                  fontFamily: 'iranyekan',
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      SimpleIcons.whatsapp,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      SimpleIcons.telegram,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      SimpleIcons.aparat,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      SimpleIcons.instagram,
                      color: Colors.grey.shade600,
                    ),
                  )
                ],
              ),
              Text(
                'نماد اعتماد الکترونیکی',
                style: TextStyle(
                  color: _isTapped ? purple : Colors.white,
                  fontFamily: 'iranyekan',
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
