import 'package:flutter/material.dart';

import '../../res/styles.dart';

class HeaderTable extends StatelessWidget {
  const HeaderTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Team', style: Styles.smal2),
        Expanded(child: SizedBox()),
        Text('Change', style: Styles.smal2),
        SizedBox(width: 5),
        Text('Win', style: Styles.smal2),
        SizedBox(width: 5),
        Text('Draw', style: Styles.smal2),
        SizedBox(width: 5),
        Text('Loss', style: Styles.smal2),
        SizedBox(width: 5),
        Text('Goal+/-', style: Styles.smal2),
        SizedBox(width: 5),
        Text('Position', style: Styles.smal2),
      ],
    );
  }
}
