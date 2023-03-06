import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:front_esignco/constants/constants.dart';
import 'package:front_esignco/constants/textfield.dart';
import 'package:hexcolor/hexcolor.dart';

class SendCode extends StatelessWidget {
  const SendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: background,
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward,
                color: black,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/enter-code.png"),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "کد پنج رقمی ارسال شده به شماره 091955555 را وارد کنید",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Iranyekan", fontSize: 12),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFieldWidget(),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 300.0,
              height: 40.0,
              child: ElevatedButton(
                onPressed: () {
                  // final snackBar = SnackBar(
                  //   backgroundColor: bgerror,
                  //   content: Align(
                  //     alignment: Alignment.centerRight,
                  //     child: const Text(
                  //       'توکن ارسال شده نامعتبر است',
                  //       style: TextStyle(
                  //           color: Colors.red,
                  //           fontFamily: "Iranyekan",
                  //           fontSize: 14),
                  //     ),
                  //   ),
                  // );
                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    disabledBackgroundColor: disabledBackground,
                    disabledForegroundColor: Colors.white),
                child: Text("تایید"),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: " کدی دریافت نکردید؟",
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "Iranyekan",
                        fontSize: 12),
                  ),
                  TextSpan(
                    text: " ارسال مجدد",
                    style: TextStyle(
                        color: purple, fontFamily: "Iranyekan", fontSize: 12),
                  )
                ],
              ),
            ),
            // RichText(
            //   text: TextSpan(
            //     children: [
            //       TextSpan(
            //         text: " ارسال مجدد کد تا",
            //         style: TextStyle(
            //             color: Colors.black54,
            //             fontFamily: "Iranyekan",
            //             fontSize: 12),
            //       ),
            //       TextSpan(
            //         text: " 00:00 ",
            //         style: TextStyle(
            //             color: Colors.black54,
            //             fontFamily: "Iranyekan",
            //             fontSize: 12),
            //       ),
            //       TextSpan(
            //         text: "دیگر",
            //         style: TextStyle(
            //             color: Colors.black54,
            //             fontFamily: "Iranyekan",
            //             fontSize: 12),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
