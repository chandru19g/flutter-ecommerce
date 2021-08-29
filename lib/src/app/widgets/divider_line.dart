import 'package:flutter/material.dart';

Widget dividerLine(Size size) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      height: size.height / 40,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
      ),
    ),
  );
}
