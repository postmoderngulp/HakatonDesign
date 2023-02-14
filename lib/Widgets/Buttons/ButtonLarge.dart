import 'package:flutter/material.dart';
import '../Alerts/Alert.dart';

class ButtonLarge extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(382, 41)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(color.Lile),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          )
      ),
      onPressed: () {

      },
      child: Text(
        "Далее",
        style: TextStyle(color: ColorText.colorTextContrast,fontSize: 16,fontFamily: "RobotoRegular"),
      ),
    );
  }
}
