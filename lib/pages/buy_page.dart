import 'package:betting3/pages/home_page.dart';
import 'package:betting3/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bg.dart';
import '../widgets/button.dart';
import '../widgets/header.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Image.asset('assets/b1.png'),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/pie.png'),
                          SizedBox(width: 10),
                          Text(
                            '10',
                            style: GoogleFonts.koHo(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'allows the player to open an additional cookie',
                        textAlign: TextAlign.center,
                        style: Styles.h2,
                      ),
                      SizedBox(height: 10),
                      SizedBox(height: 30),
                      Button(
                          title: '     OK     ',
                          function: () => Get.offAll(HomePage())),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              Button(title: 'BOUGHT', function: () => Get.offAll(HomePage())),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
