import 'package:betting3/pages/forecast_page2.dart';
import 'package:betting3/widgets/button_pie.dart';
import 'package:betting3/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bg.dart';
import '../widgets/button.dart';
import '../widgets/header.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({super.key});

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
              Image.asset('assets/f1.png'),
              Button(
                title: 'Find out',
                function: () => Get.to(const ForecastPage2()),
              ),
              const Expanded(child: SizedBox()),
              SvgPicture.asset('assets/text10min.svg'),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
