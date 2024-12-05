import 'package:flutter/material.dart';
import 'package:mytask/widgets/color.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
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
                    'Please Enter Your Mobile Number !',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Row(
                children: [
                  // InkWell(
                  //   onTap: () {},
                  //   child: Container(
                  //     height: 60,
                  //     width: 60,
                  //     decoration: BoxDecoration(
                  //         border: Border.all(color: colors.mygrey),
                  //         borderRadius: BorderRadius.circular(20)),
                  //     child: Center(
                  //       child: Text(
                  //         '+91',
                  //         style: TextStyle(color: colors.orange2, fontSize: 20),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    height: 100,
                    width: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter Mobile Number',
                        labelText: 'Enter Mobile Number',
                        fillColor: colors.orange2,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 100,
                      width: 250,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          fillColor: colors.orange2,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/otp');
                },
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
