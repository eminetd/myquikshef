import 'package:flutter/material.dart';
import 'package:mytask/widgets/color.dart';

class MailLogin extends StatefulWidget {
  const MailLogin({Key? key}) : super(key: key);

  @override
  State<MailLogin> createState() => _MailLoginState();
}

class _MailLoginState extends State<MailLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 100),
              child: Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/icon.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Text(
                    'Please Enter Your Email Address !',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                width: 300,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    fillColor: colors.orange2,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colors.orange2,
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 20, color: colors.mywhite),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
