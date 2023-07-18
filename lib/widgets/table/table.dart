import 'dart:math';

import 'package:betting3/res/styles.dart';
import 'package:betting3/widgets/table/row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../bloc/matches_bloc/matches_bloc.dart';
import '../../models/matches/matches.dart';
import 'header.dart';

class TableData extends StatefulWidget {
  const TableData({super.key});

  @override
  State<TableData> createState() => _TableDataState();
}

class _TableDataState extends State<TableData> {
  Matches? matches;

  var h = DateTime.now().hour;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<MatchesBloc>().state.when(
          loaded: (m) {
            matches = m;
          },
          loading: () {},
          error: () {},
        );
    return Column(
      children: [
        HeaderTable(),
        Divider(color: Styles.blue),
        RowData(
          name: matches?.tournaments[0].Events[0].T1.first.Nm ?? '',
          img: matches?.tournaments[0].Events[0].T1.first.Img ?? '',
          val1: Random().nextInt(20),
          val2: Random().nextInt(20),
          val3: Random().nextInt(20),
          val4: Random().nextInt(20),
          val5: Random().nextInt(20).toString() +
              '/' +
              Random().nextInt(20).toString(),
          val6: 1,
        ),
        RowData(
          name: matches?.tournaments[0].Events[0].T2.first.Nm ?? '',
          img: matches?.tournaments[0].Events[0].T2.first.Img ?? '',
          val1: Random().nextInt(20),
          val2: Random().nextInt(20),
          val3: Random().nextInt(20),
          val4: Random().nextInt(20),
          val5: Random().nextInt(20).toString() +
              '/' +
              Random().nextInt(20).toString(),
          val6: 2,
        ),
        RowData(
          name: matches?.tournaments[1].Events[0].T1.first.Nm ?? '',
          img: matches?.tournaments[1].Events[0].T1.first.Img ?? '',
          val1: Random().nextInt(20),
          val2: Random().nextInt(20),
          val3: Random().nextInt(20),
          val4: Random().nextInt(20),
          val5: Random().nextInt(20).toString() +
              '/' +
              Random().nextInt(20).toString(),
          val6: 3,
        ),
        RowData(
          name: matches?.tournaments[1].Events[0].T2.first.Nm ?? '',
          img: matches?.tournaments[1].Events[0].T2.first.Img ?? '',
          val1: Random().nextInt(20),
          val2: Random().nextInt(20),
          val3: Random().nextInt(20),
          val4: Random().nextInt(20),
          val5: Random().nextInt(20).toString() +
              '/' +
              Random().nextInt(20).toString(),
          val6: 4,
        ),
        RowData(
          name: matches?.tournaments[2].Events[0].T1.first.Nm ?? '',
          img: matches?.tournaments[2].Events[0].T1.first.Img ?? '',
          val1: Random().nextInt(20),
          val2: Random().nextInt(20),
          val3: Random().nextInt(20),
          val4: Random().nextInt(20),
          val5: Random().nextInt(20).toString() +
              '/' +
              Random().nextInt(20).toString(),
          val6: 5,
        ),
        RowData(
          name: matches?.tournaments[2].Events[0].T2.first.Nm ?? '',
          img: matches?.tournaments[2].Events[0].T2.first.Img ?? '',
          val1: Random().nextInt(20),
          val2: Random().nextInt(20),
          val3: Random().nextInt(20),
          val4: Random().nextInt(20),
          val5: Random().nextInt(20).toString() +
              '/' +
              Random().nextInt(20).toString(),
          val6: 6,
        ),
        RowData(
          name: matches?.tournaments[3].Events[0].T1.first.Nm ?? '',
          img: matches?.tournaments[3].Events[0].T1.first.Img ?? '',
          val1: Random().nextInt(20),
          val2: Random().nextInt(20),
          val3: Random().nextInt(20),
          val4: Random().nextInt(20),
          val5: Random().nextInt(20).toString() +
              '/' +
              Random().nextInt(20).toString(),
          val6: 7,
        ),
        RowData(
          name: matches?.tournaments[3].Events[0].T2.first.Nm ?? '',
          img: matches?.tournaments[3].Events[0].T2.first.Img ?? '',
          val1: Random().nextInt(20),
          val2: Random().nextInt(20),
          val3: Random().nextInt(20),
          val4: Random().nextInt(20),
          val5: Random().nextInt(20).toString() +
              '/' +
              Random().nextInt(20).toString(),
          val6: 8,
        ),
        RowData(
          name: matches?.tournaments[4].Events[0].T1.first.Nm ?? '',
          img: matches?.tournaments[4].Events[0].T1.first.Img ?? '',
          val1: Random().nextInt(20),
          val2: Random().nextInt(20),
          val3: Random().nextInt(20),
          val4: Random().nextInt(20),
          val5: Random().nextInt(20).toString() +
              '/' +
              Random().nextInt(20).toString(),
          val6: 9,
        ),
        RowData(
          name: matches?.tournaments[5].Events[0].T2.first.Nm ?? '',
          img: matches?.tournaments[5].Events[0].T2.first.Img ?? '',
          val1: Random().nextInt(20),
          val2: Random().nextInt(20),
          val3: Random().nextInt(20),
          val4: Random().nextInt(20),
          val5: Random().nextInt(20).toString() +
              '/' +
              Random().nextInt(20).toString(),
          val6: 10,
        ),
      ],
    );
  }
}
