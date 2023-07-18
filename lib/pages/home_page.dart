import 'package:betting3/pages/buy_page.dart';
import 'package:betting3/pages/forecast_page.dart';
import 'package:betting3/pages/prediction_info.dart';
import 'package:betting3/pages/settings.dart';
import 'package:betting3/pages/store_page.dart';
import 'package:betting3/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import '../widgets/bg.dart';
import '../widgets/button.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var h = DateTime.now().hour;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bg(
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Text(
              'How to get a \n  prediction',
              style: GoogleFonts.kavoon(
                  fontSize: 36, color: Styles.blue, height: 1.0),
            ),
            const SizedBox(height: 20),
            Button(title: 'Settings', function: () => Get.to(Settings())),
            const SizedBox(height: 30),
            InkWell(
              onTap: () => Get.to(const ForecastPage()),
              child: Column(children: [
                if (h >= 6 && h < 11) Image.asset('assets/m1.png'),
                if (h >= 11 && h < 16) Image.asset('assets/m2.png'),
                if (h >= 16 && h < 22) Image.asset('assets/m3.png'),
                if (h >= 22 && h < 6) Image.asset('assets/m4.png'),
              ]),
            ),
            const SizedBox(height: 20),
            Button(
              title: 'Candy Store',
              function: () => Get.to(const StorePage()),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
