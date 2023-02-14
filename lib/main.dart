import 'package:flutter/material.dart';
import 'package:hakatondesign/Widgets/Buttons/ButtonLarge.dart';
import 'package:hakatondesign/Widgets/Buttons/ButtonSmallForBanner.dart';
import 'package:hakatondesign/Widgets/Buttons/ButtonWithPlus.dart';
import 'package:hakatondesign/Widgets/Buttons/LightButtonRegularWithPlus.dart';
import 'package:hakatondesign/Widgets/Pagination/Pagination.dart';
import 'package:hakatondesign/Widgets/TabBars/TabBarPage+.dart';
import 'Widgets/Banners/Banner.dart';
import 'Widgets/TabBars/TabBarPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Ui(),
  ));
}

class Ui extends StatefulWidget {
  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 300,),
          ButtonSmallForBanner(),
          ButtonWithPlusSmall(),
          ButtonLarge(),
          LightButtonRegularWithPlus()
        ],
      ),
    );
  }
}
