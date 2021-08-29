import 'package:ecommerce/src/app/pages/profile/Widgets/account_list.dart';
import 'package:ecommerce/src/app/widgets/divider_line.dart';
import 'package:ecommerce/src/app/pages/profile/Widgets/expand_child.dart';
import 'package:ecommerce/src/app/pages/profile/Widgets/expand_header.dart';
import 'package:ecommerce/src/app/pages/profile/Widgets/user_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            userDetails(size),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: ExpansionTile(
                  textColor: Colors.black,
                  iconColor: Colors.grey[500],
                  collapsedTextColor: Colors.black,
                  collapsedIconColor: Colors.grey[500],
                  children: <Widget>[
                    accountList(size, Icons.home_outlined, "Manage Address"),
                    accountList(
                        size, Icons.favorite_border_outlined, "Favorites"),
                    accountList(size, Icons.local_offer_outlined, "Offers"),
                    accountList(size, Icons.settings, "App Settings"),
                  ],
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      expandHeader(size, "My Account"),
                      expandChild(size, "Addresses, Favorites & Others")
                    ],
                  )),
            ),
            dividerLine(size),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: ExpansionTile(
                  textColor: Colors.black,
                  iconColor: Colors.grey[500],
                  collapsedTextColor: Colors.black,
                  collapsedIconColor: Colors.grey[500],
                  children: <Widget>[
                    accountList(size, Icons.payment_outlined, "Refund Status"),
                    accountList(size, Icons.payment_outlined, "Payment Modes"),
                  ],
                  title: Column(
                    children: <Widget>[
                      expandHeader(size, "Payments & Refunds"),
                      expandChild(size, "Refund status & Payment modes")
                    ],
                  )),
            ),
            dividerLine(size),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      expandHeader(size, "Swiggy Money"),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15.0,
                        color: Colors.grey[500],
                      )
                    ],
                  ),
                  expandChild(
                      size, "View Account Balance & Transaction History")
                ],
              ),
            ),
            dividerLine(size),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      expandHeader(size, "Help"),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15.0,
                        color: Colors.grey[500],
                      )
                    ],
                  ),
                  expandChild(size, "FAQs & Links")
                ],
              ),
            ),
            Container(
              height: size.height / 20,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
            ),
            CupertinoButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "LOGOUT",
                    style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  Icon(Icons.power_settings_new, color: Colors.black,)
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
