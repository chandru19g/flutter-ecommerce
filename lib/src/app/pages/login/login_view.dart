import 'dart:convert';
import 'package:ecommerce/Authservice.dart';
import 'package:ecommerce/src/app/pages/login/widgets/gmailLoginButton.dart';
import 'package:ecommerce/src/app/pages/login/widgets/specificButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localstorage/localstorage.dart';

final TextEditingController emailController = new TextEditingController();
final TextEditingController passwordController = new TextEditingController();
var jsonResponse;
final LocalStorage storage = new LocalStorage('ecommerce_app');

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue[300],
    ));

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue.shade200, Colors.blue.shade200])),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Container(
                    height: size.height / 3.5,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: size.height / 40),
                  textSection(),
                  SizedBox(height: size.height / 40),
                  CupertinoButton(
                    onPressed: () async {
                      Authservice()
                          .signIn(emailController.text.toString(),
                              passwordController.text.toString(), context)
                          .then((value) => {
                                if (value != null)
                                  {
                                    jsonResponse = jsonDecode(value.toString()),
                                    print(jsonResponse['access_token']),
                                    saveLogin(jsonResponse['access_token']),
                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil(
                                            "/home_page", (route) => false)
                                  }
                                else
                                  {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("Invalid")))
                                  }
                              });
                      // Navigator.pushNamed(context, "/home_page");
                    },
                    child: Container(
                      height: size.height / 14,
                      width: size.width / 1.12,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height / 8,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 1,
                          width: size.width / 3,
                          color: Color.fromRGBO(250, 79, 95, 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "OR",
                            style: TextStyle(color: Colors.grey.shade500),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: size.width / 3,
                          color: Color.fromRGBO(250, 79, 95, 1),
                        ),
                      ],
                    ),
                  ),
                  loginWithEmailButton(size),
                  SizedBox(
                    height: size.height / 30,
                  ),
                  Container(
                    height: size.height / 15,
                    width: size.width / 1.12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        specificButton(size, "Facebook", "assets/facebook.png"),
                        specificButton(size, "Google", "assets/google.png"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height / 25,
                  ),
                  Text(
                    "By continuing, you agree to our",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 4.0, left: 4.0, right: 4.0, bottom: 20.0),
                    child: Text(
                      "Terms of Services Privacy Policy Content Policy",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

saveLogin(token) async {
  storage.setItem("token", token);
  print("token");
  print(storage.getItem("token"));
}

Widget textSection() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
    child: Column(
      children: <Widget>[
        TextFormField(
          controller: emailController,
          cursorColor: Colors.black54,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            icon: Icon(Icons.email, color: Colors.black45),
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.black45),
          ),
        ),
        SizedBox(height: 30.0),
        TextFormField(
          controller: passwordController,
          cursorColor: Colors.black,
          obscureText: true,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            icon: Icon(Icons.lock, color: Colors.black45),
            hintText: "Password",
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black45)),
            hintStyle: TextStyle(color: Colors.black45),
          ),
        ),
      ],
    ),
  );
}
