import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Buttons/ButtonSmall.dart';
import '../Buttons/LightButtonSmall.dart';
import 'Alert.dart';

class AlertLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 1,
      title: Center(
          child: Text(
        "Какой-то текст",
        style: TextStyle(fontFamily: "RobotoMedium"),
      )),
      content: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
        style: TextStyle(
            color: ColorText.colorTextSecondary, fontFamily: "RobotoRegular"),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LightButtonSmall(),
            SizedBox(
              width: 10,
            ),
            ButtonSmall(),
          ],
        ),
      ],
    );
  }
}
