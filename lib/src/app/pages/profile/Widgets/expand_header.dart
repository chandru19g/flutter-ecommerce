import 'package:flutter/material.dart';

Widget expandHeader(Size size, String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Container(
      width: size.width/1.2,
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    ),
  );
}
