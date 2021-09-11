import 'package:cupertino_calendar_month_view/month_view.dart';
import 'package:cupertino_calendar_structre/structre.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MonthViewExample());

class MonthViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CupertinoApp();
}

class MonthViewDemoWidget extends StatefulWidget {
  final DateTime demoFrom = DateTime.now().subtract(Duration(days: 90)),
      demoTo = DateTime.now().add(Duration(days: 90));

  @override
  State<MonthViewDemoWidget> createState() => MonthViewDemoWidgetState();
}

class MonthViewDemoWidgetState extends State<MonthViewDemoWidget> {
  @override
  Widget build(BuildContext context) =>
      CupertinoCalendarMonthView.withDateRemind(
          dateRemindList: DateRemindList([]),
          yearMonthRange: YearMonthRange(YearMonth.dateTime(widget.demoFrom),
              YearMonth.dateTime(widget.demoTo)));
}
