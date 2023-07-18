import 'dart:math';

import 'package:betting3/models/matches/matches.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../res/styles.dart';

class PredictionsContainer extends StatelessWidget {
  PredictionsContainer({super.key, required this.pos, required this.matches});
  int pos;
  Matches? matches;
  var h = DateTime.now().hour;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://lsm-static-prod.livescore.com/medium/${matches?.tournaments[pos].Events[0].T1.first.Img}",
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Text(
                  matches?.tournaments[pos].Events[0].T1.first.Nm ?? '',
                  style: Styles.smal1,
                )
              ],
            ),
            SizedBox(
              width: 150,
              child: Column(
                children: [
                  Text(
                    DateFormat('dd.MM.yy').format(DateTime.now()),
                    style: Styles.smal1,
                  ),
                  Text(
                    '${DateFormat('hh:mm').format(DateTime.now().add(Duration(minutes: Random().nextInt(1000)))).substring(0, 4)}0',
                    style: Styles.smal1,
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://lsm-static-prod.livescore.com/medium/${matches?.tournaments[pos].Events[0].T2.first.Img}",
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Text(
                  matches?.tournaments[pos].Events[0].T2.first.Nm ?? '',
                  style: Styles.smal1,
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Styles.darkblue,
              width: 50,
              height: 27,
              alignment: Alignment.center,
              child: Text((Random().nextDouble() * 4).toStringAsFixed(2)),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              color: Styles.blue,
              width: 50,
              height: 27,
              alignment: Alignment.center,
              child: Text((Random().nextDouble() * 4).toStringAsFixed(2)),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              color: Styles.blue,
              width: 50,
              height: 27,
              alignment: Alignment.center,
              child: Text((Random().nextDouble() * 3).toStringAsFixed(2)),
            ),
          ],
        ),
        SizedBox(height: 10),
        Image.asset('assets/learn.png'),
      ],
    );
  }
}
