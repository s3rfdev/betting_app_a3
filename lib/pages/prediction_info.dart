import 'package:betting3/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bg.dart';
import '../widgets/button.dart';
import '../widgets/header.dart';

class PredictionInfo extends StatelessWidget {
  const PredictionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bg(
        child: Stack(
          children: [
            Column(
              children: [
                Header(),
                SizedBox(height: 30),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Styles.bgWhiteT),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Destiny allows you to open a biscuit once in a while. Don\'t miss your chance, keep an eye on the time, log in on time and get more information',
                          textAlign: TextAlign.center,
                          style: Styles.h1,
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'assets/b2.png',
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
