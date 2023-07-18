import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static Color blue = Color(0xff0089D5);
  static Color darkblue = Color(0xff2E6378);
  static Color darkblue2 = Color(0xff457285);
  static Color bgWhite = Color(0xffF1F4F6);
  static Color bgWhiteT = darkblue2.withOpacity(0.4);

  static TextStyle smal1 = GoogleFonts.koHo(
    fontSize: 16,
    color: Styles.darkblue,
    fontWeight: FontWeight.w700,
  );
  static TextStyle smal2 = GoogleFonts.koHo(
    fontSize: 11,
    color: Colors.red,
    fontWeight: FontWeight.w700,
  );
  static TextStyle smal3 = GoogleFonts.koHo(
    fontSize: 13,
    color: Styles.darkblue,
    fontWeight: FontWeight.w700,
  );
  static TextStyle h1 = GoogleFonts.koHo(
    fontSize: 28,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
  static TextStyle h2 = GoogleFonts.koHo(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
}
