import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hakatondesign/Widgets/Alerts/Alert.dart';

import 'Tab1.dart';
import 'Tab2.dart';
import 'Tab3.dart';
import 'Tab4.dart';

class TabBarPagePlus extends StatefulWidget {
  @override
  State<TabBarPagePlus> createState() => _TabBarPagePlusState();
}

class _TabBarPagePlusState extends State<TabBarPagePlus> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState(){
    tabController = TabController(length: 4, vsync: this);
    super.initState();

  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorText.colorTextSecondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(

                color: ColorText.colorTextContrast,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: TabBar(
                        indicatorColor: ColorText.colorTextContrast,
                        labelColor: color.Lile,
                        unselectedLabelColor: ColorText.colorTextSecondary,
                        controller: tabController,
                        indicator: BoxDecoration(
                          color: ColorText.colorTextContrast,
                          boxShadow: [
                            BoxShadow(
                              color: ColorText.colorTextSecondary,
                              blurRadius: 6
                            )
                          ],
                          borderRadius: BorderRadius.circular(15)
                        ),
                        tabs: [
                          Tab(
                            text: 'Tab',
                          ),
                          Tab(
                            text: 'Tab',
                          ),
                          Tab(
                            text: 'Tab',
                          ),
                          Tab(
                            text: 'Tab',
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: TabBarView(
                      controller: tabController,
                      children: [
                        Tab1(),
                        Tab2(),
                        Tab3(),
                        Tab4(),
                      ],
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
