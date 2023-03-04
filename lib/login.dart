import 'package:flutter/material.dart';
import 'package:front_esignco/constants/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: background,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150.0,
              width: 150.0,
              child: Image.asset("images/color-logo.png"),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "لطفا برای ورود / ثبت نام شماره موبایل خود را وارد کنید",
            style:
                TextStyle(fontFamily: 'Iranyekan', fontSize: 12, color: black),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 320.0,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'شماره موبایل',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.0,
            height: 40.0,
            child: ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                  backgroundColor: purple,
                  disabledBackgroundColor: disabledBackground,
                  disabledForegroundColor: Colors.white),
              child: Text("مرحله بعد"),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'با ثبت نام در ایزاین',
                  style: TextStyle(
                      fontFamily: 'Iranyekan', fontSize: 12, color: black),
                ),
                TextSpan(
                    text: ' قوانین و مقررات ',
                    style: TextStyle(
                        color: purple1, fontFamily: 'Iranyekan', fontSize: 12)),
                TextSpan(
                  text: 'را می پذیرم',
                  style: TextStyle(
                      fontFamily: 'Iranyekan', fontSize: 12, color: black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
