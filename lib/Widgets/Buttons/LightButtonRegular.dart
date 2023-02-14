import 'package:flutter/material.dart';
import 'package:hakatondesign/Widgets/Alerts/Alert.dart';

class LightButtonRegular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(186, 41)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(color.SuperLightPink),
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
        style: TextStyle(color: color.Lile,fontSize: 16,fontFamily: "RobotoRegular"),
      ),
    );
  }
}
