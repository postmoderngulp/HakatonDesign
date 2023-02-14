import 'package:flutter/material.dart';
import 'package:hakatondesign/Widgets/Alerts/Alert.dart';

import '../Alerts/AlertLarge.dart';


class ButtonSmallForBanner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(10, 34)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(color.Lile),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          )
      ),
      onPressed: () {
        showDialog(context: context, builder: (context) => AlertLarge());
      },
      child: Text(
        "Далее",
        style: TextStyle(color: ColorText.colorTextContrast,fontSize: 14,fontFamily: "RobotoRegular"),
      ),
    );
  }
}
