import 'package:flutter/material.dart';
import 'package:hakatondesign/Widgets/Alerts/Alert.dart';

class LightButtonWithPlusSmall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(85, 33)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(color.SuperLightPink),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          )
      ),
      onPressed: () {
        showDialog(context: context, builder: (context) => Alert());
      },
      child: Text(
        "+ Далее",
        style: TextStyle(color: color.Lile,fontSize: 14,fontFamily: "RobotoRegular"),
      ),
    );
  }
}
