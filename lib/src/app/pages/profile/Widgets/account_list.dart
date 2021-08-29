import 'package:flutter/material.dart';

Widget accountList(Size size, IconData iconname, String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Icon(
              iconname,
              color: Colors.grey[500],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(title, style: TextStyle(fontSize: 15.0),),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          size: 15.0,
          color: Colors.grey[500],
        )
      ],
    ),
  );
}
