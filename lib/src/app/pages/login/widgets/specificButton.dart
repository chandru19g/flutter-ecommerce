import 'package:flutter/material.dart';

Widget specificButton(Size size, String title, String path) {
  return Container(
    height: size.height / 14,
    width: size.width / 2.3,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: size.height / 25,
          width: size.width / 15,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(path),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    ),
  );
}