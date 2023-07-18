import 'package:betting3/pages/store_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPie extends StatelessWidget {
  ButtonPie({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Image.asset('assets/pie.png'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xff0089D5)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
      ),
      onPressed: () {
        Get.offAll(StorePage());
      },
      label: Text(
        '0',
        style: GoogleFonts.koHo(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
