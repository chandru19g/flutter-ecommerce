import 'package:flutter/material.dart';

Widget userDetails(Size size) {
  return Column(
    children: <Widget>[
      Container(
              height: size.height / 17,
              width: size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Chandru".toUpperCase(),
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Edit".toUpperCase(),
                      style: TextStyle(
                        color: Colors.orange[700],
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height / 20,
              width: size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "1234567890\t-\tabc@mail.com",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2.0, color: Colors.black)
                  ),
                ),
              ),
            )
    ],
  );
}
