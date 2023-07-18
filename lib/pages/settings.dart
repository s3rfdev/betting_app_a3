import 'package:betting3/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bg.dart';
import '../widgets/button.dart';
import '../widgets/header.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isOn = true;
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
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'SOUND',
                      style: GoogleFonts.koHo(
                        fontSize: 34,
                        color: Styles.blue,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => setState(() {
                            isOn = true;
                          }),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              SvgPicture.asset(
                                  'assets/${isOn ? 'on' : 'off'}.svg'),
                              Text(
                                'ON',
                                style: GoogleFonts.koHo(
                                  fontSize: 24,
                                  color: Styles.bgWhite,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => setState(() {
                            isOn = false;
                          }),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              SvgPicture.asset(
                                  'assets/${!isOn ? 'on' : 'off'}.svg'),
                              Text(
                                'OFF',
                                style: GoogleFonts.koHo(
                                  fontSize: 24,
                                  color: Styles.bgWhite,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Image.asset('assets/b3.png'),
            ],
          ),
        ),
      ),
    );
  }
}
