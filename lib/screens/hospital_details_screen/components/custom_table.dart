import 'package:flutter/material.dart';
import 'package:medlink/core/colors.dart';

import '../../../core/constants.dart';

class CustomTable extends StatelessWidget {
  final List<String> days;
  final List<String> time;
  final Color? bgColor;
  final Color? dayTextColor;
  final Color? timeTextColor;

  const CustomTable(
      {Key? key,
      required this.days,
      required this.time,
      this.bgColor,
      this.dayTextColor,
      this.timeTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (days.length != time.length) {
      throw UnimplementedError(
          "Days and Time list have different lengths, check the elements of your list");
    }

    List<TableRow> tableRowList = [];

    for (int i = 0; i < days.length; i++) {
      ///Using a for loop rather than a for-in loop since we need the index
      ///to access both list and I dont want to write 2 for-in loops for both list

      TableRow newTableRow = TableRow(
        children: [
          Text(days[i],
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: dayTextColor ?? kNeutral50)),
          Text(
            time[i],
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold, color: timeTextColor),
          ),
        ],
      );
      tableRowList.add(newTableRow);
    }
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: bgColor ?? Theme.of(context).cardColor),
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Table(columnWidths: const {
        0: FlexColumnWidth(1.5),
        1: FlexColumnWidth(1),
      }, children: tableRowList),
    );
  }
}
