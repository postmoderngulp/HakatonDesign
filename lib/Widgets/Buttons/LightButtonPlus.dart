import 'package:flutter/material.dart';
import 'package:hakatondesign/Widgets/Alerts/Alert.dart';

class LightButtonPlus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(36, 36)),
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
        "+",
        style: TextStyle(color: color.Lile,fontSize: 14,fontFamily: "RobotoRegular"),
      ),
    );
  }
}
