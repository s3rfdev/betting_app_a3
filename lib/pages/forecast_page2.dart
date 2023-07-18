import 'package:betting3/pages/forecast_page3.dart';
import 'package:betting3/widgets/button_pie.dart';
import 'package:betting3/res/styles.dart';
import 'package:betting3/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bg.dart';
import '../widgets/button.dart';

class ForecastPage2 extends StatefulWidget {
  const ForecastPage2({super.key});

  @override
  State<ForecastPage2> createState() => _ForecastPage2State();
}

class _ForecastPage2State extends State<ForecastPage2> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () => Get.off(ForecastPage3()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bg(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Header(),
              SizedBox(height: 20),
              Image.asset('assets/f2.png'),
              Button(
                title: 'Find out',
                function: () => Get.to(ForecastPage3()),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
