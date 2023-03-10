import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:front_esignco/constants/bottombar.dart';
import 'package:front_esignco/constants/colors.dart';
import 'package:front_esignco/screens/login/list_profile.dart';
import '../../constants/appbar.dart';

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
        bottomNavigationBar: BottomBar(),
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Appbar(
                height: 112.0,
                bottomLeftCir: 30.0,
                bottomRightCir: 30.0,
              ),
              SizedBox(
                height: 645,
                child: Card(
                  margin: EdgeInsets.only(
                      top: 75.0, left: 20.0, right: 20.0, bottom: 75.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
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
                          margin: EdgeInsets.only(top: 10.0),
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15.0),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
