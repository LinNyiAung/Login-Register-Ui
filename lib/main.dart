import 'package:flutter/material.dart';
import 'package:login_register_ui/login.dart';
import 'package:login_register_ui/register.dart';
import 'package:login_register_ui/test.dart';

var data = "Testing";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Login(),
      '/register': (context) => Register(),
      '/test': (context) => Test(),
    },
    theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'English',
        textTheme:
            TextTheme(bodySmall: TextStyle(fontSize: 20, color: Colors.white))),
  ));
}
