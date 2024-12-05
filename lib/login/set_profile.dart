import 'package:flutter/material.dart';
import 'package:mytask/widgets/color.dart';

class SetProfile extends StatefulWidget {
  const SetProfile({Key? key}) : super(key: key);

  @override
  State<SetProfile> createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 50),
              child: Row(
                children: [
                  Text(
                    'Finish Your Profile ',
                    style: TextStyle(color: colors.orange2, fontSize: 25),
                  )
                ],
              ),
            ),
            Divider(),
            ListTile(
              title: Container(
                height: 50,
                width: 380,
                child: TextFormField(
                  // controller: namecontroller,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: colors.myblue,
                  decoration: InputDecoration(
                    labelText: '* Enter your First Name',
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 50,
                width: 380,
                child: TextFormField(
                  // controller: namecontroller,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: colors.myblue,
                  decoration: InputDecoration(
                    labelText: '* Enter your Last Name',
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                child: Text("Mobile Number *************"),
              ),
            ),
            ListTile(
              title: Container(
                height: 50,
                width: 380,
                child: TextFormField(
                  // controller: namecontroller,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: colors.myblue,
                  decoration: InputDecoration(
                    labelText: '* Enter your email',
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 50,
                width: 380,
                child: TextFormField(
                  // controller: namecontroller,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: colors.myblue,
                  decoration: InputDecoration(
                    labelText: '* Enter your password',
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 50,
                width: 380,
                child: TextFormField(
                  // controller: namecontroller,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: colors.myblue,
                  decoration: InputDecoration(
                    labelText: '* Confirm Password ',
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                height: 50,
                width: 380,
                child: TextFormField(
                  // controller: namecontroller,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: colors.myblue,
                  decoration: InputDecoration(
                    labelText: '* Enter your  Name',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Text("By doing signup.you agree with all"),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Terms & Condition',
                      style: TextStyle(
                          color: colors.myviolet,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [Text('ofQuickShef')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 290),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/selectaddress');
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
