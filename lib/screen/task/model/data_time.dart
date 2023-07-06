import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo/model/theme/theme.dart';

class DataTime extends StatefulWidget {
  static const String routeName = 'DataTime';

  @override
  State<DataTime> createState() => _DataTimeState();
}

class _DataTimeState extends State<DataTime> {
  @override
  Widget build(BuildContext context) {
    return CalendarTimeline(
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(Duration(days: 365)),
      lastDate: DateTime.now().add(Duration(days: 365)),
      onDateSelected: (date) => print(date),
      leftMargin: 20,
      shrink: true,
      monthColor: Mytheme.blackColor,
      dayColor:  Mytheme.blackColor,
      activeDayColor: Colors.white,
      activeBackgroundDayColor: Theme.of(context).primaryColor,
      dotsColor: Color(0xFF333A47),
      selectableDayPredicate: (date) => true,
      locale: 'en_ISO',

    );
  }
}
