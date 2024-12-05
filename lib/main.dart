// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mytask/home/home_page.dart';
import 'package:mytask/login/login.dart';
import 'package:mytask/login/maillogin.dart';
import 'package:mytask/login/otpverify.dart';
import 'package:mytask/login/phonelogin.dart';
import 'package:mytask/login/select_delivery_address.dart';
import 'package:mytask/login/set_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/phonelogin': (context) => PhoneLogin(),
      '/maillogin': (context) => MailLogin(),
      '/otp': (context) => OtpVerify(),
      '/setprofile': (context) => SetProfile(),
      '/selectaddress': (context) => SelectAddress(),
      '/home': (context) => HomePage(),
    }, title: 'Quick chef', theme: ThemeData(), home: Login());
  }
}
