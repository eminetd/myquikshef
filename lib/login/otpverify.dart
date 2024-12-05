import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:mytask/widgets/color.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({Key? key}) : super(key: key);

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  'Please Enter 6 Digit code !',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 45,
              child: OTPTextField(
                keyboardType: TextInputType.number,
                length: 6,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 20,
                style: TextStyle(
                  fontSize: 17,
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                // fieldStyle: FieldStyle.underline,
                // onCompleted: (pin) {
                //   enteredPin = pin;
                //   print("Completed: " + pin);
                // },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/setprofile');
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
                    'Verify',
                    style: TextStyle(fontSize: 20, color: colors.mywhite),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
