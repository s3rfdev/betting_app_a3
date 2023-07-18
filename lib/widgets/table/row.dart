import 'package:flutter/material.dart';

import '../../res/styles.dart';

class RowData extends StatelessWidget {
  RowData({
    super.key,
    required this.name,
    required this.img,
    required this.val1,
    required this.val2,
    required this.val3,
    required this.val4,
    required this.val5,
    required this.val6,
  });
  String name;
  String img;
  int val1;
  int val2;
  int val3;
  int val4;
  String val5;
  int val6;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      alignment: Alignment.center,
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Styles.bgWhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 10),
          Text(name, style: Styles.smal3),
          Expanded(child: SizedBox()),
          SizedBox(
            width: 30,
            child: Text(val1.toString(), style: Styles.smal3),
          ),
          SizedBox(width: 5),
          SizedBox(
            width: 25,
            child: Text(val2.toString(), style: Styles.smal3),
          ),
          SizedBox(width: 5),
          SizedBox(
            width: 30,
            child: Text(val3.toString(), style: Styles.smal3),
          ),
          SizedBox(width: 5),
          SizedBox(
            width: 30,
            child: Text(val4.toString(), style: Styles.smal3),
          ),
          SizedBox(width: 5),
          SizedBox(
            width: 35,
            child: Text(val5.toString(), style: Styles.smal3),
          ),
          SizedBox(width: 5),
          SizedBox(
            width: 30,
            child: Text(val6.toString(), style: Styles.smal3),
          ),
        ],
      ),
    );
  }
}
