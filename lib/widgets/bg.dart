import 'package:flutter/material.dart';

class Bg extends StatelessWidget {
  Bg({super.key, required this.child});
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
