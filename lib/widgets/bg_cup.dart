import 'package:flutter/material.dart';

class BgCup extends StatelessWidget {
  BgCup({super.key, required this.child});
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
            'assets/table_cup.png',
            scale: 1.6,
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
