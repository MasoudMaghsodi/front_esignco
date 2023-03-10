import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.person_outlined,
            color: black,
          ),
          title: Text(
            "حساب کاربری",
            style: TextStyle(fontFamily: "Iranyekan"),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15.0,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.collections_bookmark_outlined,
            color: black,
          ),
          title: Text(
            "گالری",
            style: TextStyle(fontFamily: "Iranyekan"),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15.0,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.shopping_bag_outlined,
            color: black,
          ),
          title: Text(
            "سفارشات من",
            style: TextStyle(fontFamily: "Iranyekan"),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15.0,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.receipt_long_outlined,
            color: black,
          ),
          title: Text(
            "تراکنش ها",
            style: TextStyle(fontFamily: "Iranyekan"),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15.0,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.domain_verification_rounded,
            color: black,
          ),
          title: Text(
            "درخواست فرش سفارشی",
            style: TextStyle(fontFamily: "Iranyekan"),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15.0,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.support_agent_outlined,
            color: black,
          ),
          title: Text(
            "پشتیبانی",
            style: TextStyle(
              fontFamily: "Iranyekan",
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15.0,
          ),
        ),
      ],
    );
  }
}
