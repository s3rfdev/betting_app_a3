import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/home_page.dart';
import '../res/styles.dart';
import 'button_pie.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Get.offAll(HomePage());
            },
            icon: Icon(
              Icons.home,
              color: Styles.blue,
              size: 40,
            )),
        ButtonPie(title: '0'),
      ],
    );
  }
}
