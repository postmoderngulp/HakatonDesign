import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hakatondesign/Widgets/Alerts/Alert.dart';
import 'package:hakatondesign/Widgets/Buttons/ButtonSmall.dart';

import '../Buttons/ButtonSmallForBanner.dart';

class banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            SizedBox(
              height: 125,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            width: 360,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/NoAvatar.jpg"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "Header",
                                            style: TextStyle(
                                                color:
                                                    ColorText.colorTextPrimary,
                                                fontFamily: "RobotoMedium",
                                                fontSize: 16),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 25),
                                            child: Text(
                                              "Text",
                                              style: TextStyle(
                                                  color: ColorText
                                                      .colorTextSecondary,
                                                  fontFamily: "RobotoRegular",
                                                  fontSize: 14),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: ButtonSmallForBanner(),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 131, bottom: 57),
                                        child: IconButton(
                                            onPressed: () {

                                            },
                                            icon: Icon(Icons.cancel)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorText.colorTextContrast,
                            ),
                          ),
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
