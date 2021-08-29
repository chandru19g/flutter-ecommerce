import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Authservice {
  Dio dio = new Dio();
  String baseurl = "https://fake-api-flutter.herokuapp.com/";

  signIn(email, password, context) async {
    try {
      var response = await dio.post(baseurl + "auth/login",
          data: {"email": email, "password": password},
          options: Options(contentType: Headers.formUrlEncodedContentType));
      if (response.statusCode == 200) {
        print(response);
        return response;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid creds")));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Invalid Credentials"),
      ));
    }
  }
}
