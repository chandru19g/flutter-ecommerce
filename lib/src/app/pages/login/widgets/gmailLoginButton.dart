import 'package:flutter/material.dart';

Widget loginWithEmailButton(Size size) {
  return Container(
    height: size.height / 14,
    width: size.width / 1.12,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 14,
        ),
        Container(
          height: size.height / 25,
          width: size.width / 15,
          child: Icon(Icons.mail),
        ),
        SizedBox(width: size.width / 8),
        Text(
          "Continue with Email",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}