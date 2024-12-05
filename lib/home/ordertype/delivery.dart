import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mytask/widgets/color.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 100,
              width: 380,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: 180,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    autoPlayInterval: Duration(seconds: 2),
                    onPageChanged: (index, reason) {}),
                itemCount: 2,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Banner.png'))),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 200,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: [
                          Image.asset('burger.png'),
                          Text(
                            'All',
                            style: TextStyle(color: colors.myblack),
                          )
                        ],
                      ),
                    ),
                  );
                }
                ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: [
                          Image.asset('burger.png'),
                          Text(
                            'All',
                            style: TextStyle(color: colors.myblack),
                          )
                        ],
                      ),
                    ),
                  );
                }
                ),
          ),
          Divider(),
          ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Card(
                          child: Container(
                            height: 200,
                             child: Stack(
                              
                             ),
                          )
                        );
                      })
        ],
      ),
    );
  }
}
