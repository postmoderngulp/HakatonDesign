import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hakatondesign/Colors/colorText.dart';
import 'package:hakatondesign/Colors/colors.dart';

import '../Buttons/ButtonSmall.dart';
import '../Buttons/LightButtonSmall.dart';
colors color = colors();
colorText ColorText = colorText();
class Alert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      elevation: 1,
      title: Text("Какой-то текст",style: TextStyle(fontFamily: "RobotoMedium"),),
      content: Text("Вы уверены, что хотите сделать это?",style: TextStyle(color: ColorText.colorTextSecondary,fontFamily: "RobotoRegular"),),
      contentPadding: const EdgeInsets.symmetric(vertical: 12,horizontal: 22),
      actions: [
        Padding(
          padding: const EdgeInsets.only(left: 135),
          child: Row(children: [
            LightButtonSmall(),
            SizedBox(width: 10,),
            ButtonSmall(),
          ],),
        )

      ],
    );
  }
}
