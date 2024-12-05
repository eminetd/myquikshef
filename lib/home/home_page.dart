import 'package:flutter/material.dart';
import 'package:mytask/home/ordertype/delivery.dart';
import 'package:mytask/home/ordertype/takeaway.dart';
import 'package:mytask/widgets/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 50),
                child: Row(
                  children: [
                    Text(
                      'Delivery to',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    Text(
                      'Exact Address',
                      style: TextStyle(color: colors.orange2, fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Container(
                  height: 60,
                  width: 200,
                  child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 10, right: 10),
                    // controller: _tabController,
                    labelColor: colors.orange2,
                    labelStyle:
                        TextStyle(fontSize: 15.0, color: colors.orange2),
                    unselectedLabelColor: colors.myblack,
                    tabs: [
                      Tab(text: 'Delivery'),
                      Tab(text: 'Takeaway'),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  // controller: _tabController,
                  children: [
                    Delivery(),
                    Takeaway(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
