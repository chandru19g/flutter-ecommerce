import 'package:flutter/material.dart';

Widget expandChild(Size size, String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 4.0),
    child: Container(
      width: size.width,
      child: Text(
        title,
        style: TextStyle(fontSize: 13.0, color: Colors.blueGrey[700]),
      ),
    ),
  );
}
