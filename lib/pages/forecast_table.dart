import 'package:betting3/widgets/bg_cup.dart';
import 'package:betting3/widgets/bg_paper.dart';
import 'package:betting3/widgets/button_pie.dart';
import 'package:betting3/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bg.dart';
import '../widgets/button.dart';
import '../widgets/header.dart';
import '../widgets/predictions_container.dart';
import '../widgets/table/table.dart';

class ForecastTable extends StatelessWidget {
  const ForecastTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgCup(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Header(),
              SizedBox(height: 20),
              TableData(),
            ],
          ),
        ),
      ),
    );
  }
}
