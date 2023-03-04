import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:front_esignco/constants/constants.dart';
import 'package:front_esignco/list_profile.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("fa", "IR"),
      home: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 112.0,
                width: 400,
                decoration: BoxDecoration(
                  color: purple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 16.0, left: 4.0, right: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset("images/logo.png"),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 670,
                child: Card(
                  margin: EdgeInsets.only(
                      top: 75.0, left: 20.0, right: 20.0, bottom: 75.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 1.0,
                        color: Colors.black12,
                        margin: EdgeInsets.only(top: 80.0),
                      ),
                      ListProfile(),
                      Container(
                        height: 1.0,
                        color: Colors.black12,
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.logout,
                              color: red,
                            ),
                            Text(
                              "خروج از حساب کاربری",
                              style: TextStyle(
                                  color: red, fontFamily: "Iranyekan"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 25.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  height: 90.0,
                  width: 90.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      "images/default-profile.png",
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
