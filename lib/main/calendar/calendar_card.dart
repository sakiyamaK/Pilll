import 'package:Pilll/main/calendar/calculator.dart';
import 'package:Pilll/main/calendar/calendar.dart';
import 'package:Pilll/main/calendar/utility.dart';
import 'package:Pilll/main/calendar/calendar_band_model.dart';
import 'package:Pilll/main/calendar/calendar_help.dart';
import 'package:Pilll/main/calendar/calendar_list_page.dart';
import 'package:Pilll/main/calendar/date_range.dart';
import 'package:Pilll/main/calendar/utility.dart';
import 'package:Pilll/model/pill_sheet.dart';
import 'package:Pilll/model/pill_sheet_type.dart';
import 'package:Pilll/model/setting.dart';
import 'package:Pilll/model/user.dart';
import 'package:Pilll/style/button.dart';
import 'package:Pilll/theme/font.dart';
import 'package:Pilll/theme/text_color.dart';
import 'package:Pilll/util/formatter/date_time_formatter.dart';
import 'package:Pilll/util/today.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarCard extends StatelessWidget {
  final DateTime date;

  const CalendarCard({Key key, @required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = User.watch(context);
    return Card(
      child: Column(
        children: <Widget>[
          _header(context),
          Calendar(
            calculator: Calculator(date),
            bandModels: [
              CalendarMenstruationBandModel(
                  DateTime(2020, 10, 28), DateTime(2020, 11, 2)),
              if (user.currentPillSheet != null) ...[
                menstruationDateRange(user.currentPillSheet, user.setting, 0)
                    .map((range) =>
                        CalendarMenstruationBandModel(range.begin, range.end)),
                nextPillSheetDateRange(user.currentPillSheet, 0).map((range) =>
                    CalendarNextPillSheetBandModel(range.begin, range.end)),
              ]
            ],
          ),
          _more(context, user),
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: 64),
      child: Row(
        children: [
          SizedBox(width: 16),
          Text(
            DateTimeFormatter.yearAndMonth(date),
            textAlign: TextAlign.left,
            style: FontType.cardHeader.merge(TextColorStyle.noshime),
          ),
          Spacer(),
          IconButton(
            icon: SvgPicture.asset("images/help.svg"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return CalendarHelpPage();
                  });
            },
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }

  Widget _more(BuildContext context, User user) {
    var now = today();
    CalendarListPageModel previous = CalendarListPageModel(
        Calculator(DateTime(now.year, now.month - 1, 1)), []);
    CalendarListPageModel current = CalendarListPageModel(Calculator(now), [
      if (user.currentPillSheet != null) ...[
        menstruationDateRange(user.currentPillSheet, user.setting, 0).map(
            (dateRange) =>
                CalendarMenstruationBandModel(dateRange.begin, dateRange.end)),
        nextPillSheetDateRange(user.currentPillSheet, 0).map((dateRange) =>
            CalendarNextPillSheetBandModel(dateRange.begin, dateRange.end))
      ]
    ]);
    CalendarListPageModel next = CalendarListPageModel(
        Calculator(DateTime(now.year, now.month + 1, 1)), [
      if (user.currentPillSheet != null) ...[
        menstruationDateRange(user.currentPillSheet, user.setting, 1).map(
            (dateRange) =>
                CalendarMenstruationBandModel(dateRange.begin, dateRange.end)),
        nextPillSheetDateRange(user.currentPillSheet, 1).map((dateRange) =>
            CalendarNextPillSheetBandModel(dateRange.begin, dateRange.end))
      ]
    ]);
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SecondaryButton(
            text: "もっと見る",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return CalendarListPage(models: [
                      previous,
                      current,
                      next,
                    ]);
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
