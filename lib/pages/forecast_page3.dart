import 'package:betting3/bloc/matches_bloc/matches_bloc.dart';
import 'package:betting3/pages/forecast_table.dart';
import 'package:betting3/widgets/bg_paper.dart';
import 'package:betting3/widgets/button_pie.dart';
import 'package:betting3/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../models/matches/matches.dart';
import '../widgets/bg.dart';
import '../widgets/button.dart';
import '../widgets/header.dart';
import '../widgets/predictions_container.dart';

class ForecastPage3 extends StatefulWidget {
  ForecastPage3({super.key});

  @override
  State<ForecastPage3> createState() => _ForecastPage3State();
}

class _ForecastPage3State extends State<ForecastPage3> {
  var h = DateTime.now().hour;
  @override
  void initState() {
    context.read<MatchesBloc>().add(
          MatchesEvent.fetch(
            sport: 'soccer',
            date: DateFormat('yyyyMMdd').format(
              DateTime.now(),
            ),
          ),
        );
    super.initState();
  }

  Matches? matches;
  @override
  Widget build(BuildContext context) {
    context.watch<MatchesBloc>().state.when(
          loaded: (m) {
            matches = m;
          },
          loading: () {},
          error: () {},
        );
    return Scaffold(
      body: BgPaper(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Header(),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    if (h >= 6 && h < 11) Image.asset('assets/cc/ar.png'),
                    if (h >= 11 && h < 16) Image.asset('assets/cc/co.png'),
                    if (h >= 16 && h < 22) Image.asset('assets/cc/sk.png'),
                    if (h >= 22 && h < 6) Image.asset('assets/cc/sh.png'),
                  ],
                ),
              ),
              PredictionsContainer(pos: 1, matches: matches),
              SizedBox(height: 10),
              PredictionsContainer(pos: 2, matches: matches),
              SizedBox(height: 10),
              PredictionsContainer(pos: 3, matches: matches),
              SizedBox(height: 20),
              Button(
                title: 'Get extra\n  biscuits',
                function: () => Get.to(ForecastTable()),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
