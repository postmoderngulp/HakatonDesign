import 'package:flutter/material.dart';
import 'package:hakatondesign/Widgets/Alerts/Alert.dart';
import '../Alerts/AlertLarge.dart';


class TransparentButtonSmall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          side:BorderSide(
            color: color.Lile,
            width: 1
          ),
          minimumSize: const Size(43, 41),
          elevation: 0,
          backgroundColor: ColorText.colorTextContrast,
          shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
      ),
      onPressed: () {
        showDialog(context: context, builder: (context) => AlertLarge());
      },
      child: Text(
        "Далее",
        style: TextStyle(color: color.Lile,fontSize: 16,fontFamily: "RobotoRegular"),
      ),
    );
  }
}