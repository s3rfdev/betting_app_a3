import 'package:betting3/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bg.dart';
import '../widgets/button.dart';
import '../widgets/header.dart';
import 'buy_page.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bg(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Header(),
              Expanded(child: SizedBox()),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Styles.bgWhiteT),
                  child: Column(
                    children: [
                      Text(
                        'To earn biscuits to buy, open all 4 time slots from the menu without missing their sequence. Then you can earn 5 biscuits for each time slot. But if you forget to open even one, you will earn 0',
                        textAlign: TextAlign.center,
                        style: Styles.h1,
                      ),
                      SizedBox(height: 30),
                      Button(
                        title: '   OK   ',
                        function: () => Get.off(const BuyPage()),
                      ),
                      SizedBox(height: 60),
                    ],
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
