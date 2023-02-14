import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hakatondesign/Widgets/Alerts/Alert.dart';
import 'package:number_paginator/number_paginator.dart';

class Pagination extends StatefulWidget {
  @override
  State<Pagination> createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  int numberOfPages = 15;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var pages = List.generate(
        numberOfPages,
        (index) => Center(
              child: Text(
                "Page: ${++index}",
                style:
                    TextStyle(color: ColorText.colorTextPrimary, fontSize: 20),
              ),
            ));
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: pages[currentPage],
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: NumberPaginator(
              config: NumberPaginatorUIConfig(
                buttonShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)
                ),
                buttonSelectedForegroundColor: color.Lile,
                buttonUnselectedForegroundColor: ColorText.colorTextSecondary,
                buttonSelectedBackgroundColor: ColorText.LightcolorTextSecondary,

                height: 50
              ),
              numberPages: numberOfPages,
              onPageChange: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
