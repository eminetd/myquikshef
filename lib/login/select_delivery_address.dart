import 'package:flutter/material.dart';
import 'package:mytask/widgets/color.dart';

class SelectAddress extends StatefulWidget {
  const SelectAddress({Key? key}) : super(key: key);

  @override
  State<SelectAddress> createState() => _SelectAddressState();
}

class _SelectAddressState extends State<SelectAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 50),
            child: Row(
              children: [
                Text(
                  'Select delivery Address',
                  style: TextStyle(color: colors.orange2, fontSize: 25),
                )
              ],
            ),
          ),
          Divider(),
          Container(
            height: 100,
            width: 360,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Address',
                fillColor: colors.orange2,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.near_me,
                  color: colors.orange2,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Use Your Current Location',
                    style: TextStyle(color: colors.orange2, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 560),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/home');
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
                    'Add New Address',
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
