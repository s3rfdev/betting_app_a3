import 'package:flutter/material.dart';

class BgPaper extends StatelessWidget {
  BgPaper({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/bg.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 100),
          width: double.infinity,
          child: Image.asset(
            'assets/f3.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            'assets/f3_pie.png',
            scale: 5,
          ),
        ),
        SafeArea(
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: child,
          ),
        ),
      ],
    );
  }
}
