// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytask/widgets/color.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: FloatingActionButton.extended(
                heroTag: 'Phone',
                extendedPadding: EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: colors.orange2,
                onPressed: () {
                  Navigator.pushNamed(context, '/phonelogin');
                },
                label: Text('Phone')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: FloatingActionButton.extended(
                heroTag: 'Email',
                extendedPadding: EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: colors.orange2,
                onPressed: () {
                  Navigator.pushNamed(context, '/maillogin');
                },
                label: Text('Email')),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Center(
              child: SizedBox(
                height: 250,
                width: 250,
                child: Image.asset('assets/icon.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Text(
              "Let's get started",
              style: TextStyle(fontSize: 30, color: colors.orange2),
            ),
          )
        ],
      ),
    );
  }
}
